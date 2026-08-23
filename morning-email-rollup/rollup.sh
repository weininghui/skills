#!/bin/bash
# Morning Email Rollup - Important emails from the last 24 hours

set -uo pipefail

GOG_ACCOUNT="${GOG_ACCOUNT:-your-email@gmail.com}"
MAX_EMAILS="${MAX_EMAILS:-10}"  # Default to 10, can be overridden via environment variable
WORKSPACE="${CLAWDBOT_WORKSPACE:-$HOME/clawd}"
LOG_FILE="${WORKSPACE}/morning-email-rollup-log.md"

# Initialize log
mkdir -p "$(dirname "$LOG_FILE")"

# Log with timestamp
log() {
    echo "- [$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
}

echo "📧 **Morning Email Rollup** - $(date '+%A, %B %d, %Y')"
echo ""

log "🔄 Starting morning email rollup"

# Check for calendar events (gog) - graceful fallback if not installed
if command -v gog &> /dev/null; then
    TODAY=$(date '+%Y-%m-%d')
    TOMORROW=$(date -d "$TODAY + 1 day" '+%Y-%m-%d')
    CALENDAR_EVENTS=$(gog calendar events primary --from "$TODAY" --to "$TOMORROW" --account "$GOG_ACCOUNT" 2>/dev/null)
    
    # Check if there are events (more than just the header line)
    EVENT_COUNT=$(echo "$CALENDAR_EVENTS" | tail -n +2 | grep -c . || echo "0")
    
    if [[ "$EVENT_COUNT" -gt 0 ]]; then
        echo "📅 **Today's Calendar Events:**"
        echo ""
        
        # Parse and format events (skip header line)
        echo "$CALENDAR_EVENTS" | tail -n +2 | while IFS= read -r line; do
            [[ -z "$line" ]] && continue
            
            # Parse gog output: ID START END SUMMARY
            start_full=$(echo "$line" | awk '{print $2}')
            end_full=$(echo "$line" | awk '{print $3}')
            title=$(echo "$line" | awk '{$1=$2=$3=""; print $0}' | sed 's/^[[:space:]]*//')
            
            # Extract time from ISO format (e.g., 2026-01-15T05:00:00-07:00)
            start_time=$(echo "$start_full" | cut -d'T' -f2 | cut -d'-' -f1 | cut -d'+' -f1 | cut -d':' -f1-2)
            end_time=$(echo "$end_full" | cut -d'T' -f2 | cut -d'-' -f1 | cut -d'+' -f1 | cut -d':' -f1-2)
            
            # Convert to 12-hour format
            start_12h=$(date -d "$start_time" '+%I:%M %p' 2>/dev/null | sed 's/^0//')
            end_12h=$(date -d "$end_time" '+%I:%M %p' 2>/dev/null | sed 's/^0//')
            
            echo "• $start_12h - $end_12h: $title"
        done
        echo ""
        log "📅 Calendar events listed ($EVENT_COUNT events)"
    fi
fi

echo ""

# Search for important/starred emails from last 24 hours
IMPORTANT_EMAILS=$(gog gmail search 'is:important OR is:starred newer_than:1d' --max 20 --account "$GOG_ACCOUNT" --json 2>/dev/null)

if [[ -z "$IMPORTANT_EMAILS" ]] || [[ "$IMPORTANT_EMAILS" == "null" ]]; then
    echo "✅ No important emails in the last 24 hours."
    log "✅ No important emails found"
    exit 0
fi

# Count emails
EMAIL_COUNT=$(echo "$IMPORTANT_EMAILS" | jq -r '.threads | length' 2>/dev/null || echo "0")

if [[ "$EMAIL_COUNT" -eq 0 ]]; then
    echo "✅ No important emails in the last 24 hours."
    log "✅ No important emails found"
    exit 0
fi

echo "📬 **Top $MAX_EMAILS Important Emails** (from last 24 hours):"
echo ""

# Process up to MAX_EMAILS
email_counter=0
echo "$IMPORTANT_EMAILS" | jq -r '.threads[] | "\(.id)"' | while IFS= read -r thread_id; do
    [[ -z "$thread_id" ]] && continue
    
    # Limit to MAX_EMAILS
    if [[ $email_counter -ge $MAX_EMAILS ]]; then
        break
    fi
    email_counter=$((email_counter + 1))
    
    # Get email details
    email_data=$(gog gmail get "$thread_id" --account "$GOG_ACCOUNT" 2>/dev/null)
    
    if [[ -z "$email_data" ]]; then
        continue
    fi
    
    # Extract fields
    from=$(echo "$email_data" | grep "^from" | cut -f2-)
    subject=$(echo "$email_data" | grep "^subject" | cut -f2-)
    
    # Get first 150 chars from email body (after headers), strip HTML/CSS, clean whitespace
    snippet=$(echo "$email_data" | awk 'BEGIN{body=0} /^$/{body=1; next} body{print}' | \
        sed 's/<[^>]*>//g' | \
        sed 's/@media[^}]*}//g' | \
        sed 's/{[^}]*}//g' | \
        tr '\n' ' ' | \
        sed 's/\\n/ /g' | \
        sed 's/  */ /g' | \
        sed 's/^ *//' | \
        head -c 150)
    
    # Check if unread
    labels=$(echo "$email_data" | grep "^label_ids" | cut -f2-)
    if [[ "$labels" == *"UNREAD"* ]]; then
        unread_marker="🔴 "
    else
        unread_marker=""
    fi
    
    echo "${unread_marker}**${email_counter}.** $from"
    echo "   **Subject:** $subject"
    # Only show overview if it looks like readable text (not CSS/HTML junk)
    if [[ -n "$snippet" ]] && [[ ! "$snippet" =~ ^[[:space:]]*\. ]] && [[ ! "$snippet" =~ ^[[:space:]]*\{ ]] && [[ ${#snippet} -gt 20 ]]; then
        echo "   **Overview:** $snippet..."
    fi
    echo ""
    
done

if [[ $EMAIL_COUNT -gt $MAX_EMAILS ]]; then
    echo "---"
    echo "📊 **Total:** $EMAIL_COUNT important emails (showing top $MAX_EMAILS)"
fi

log "✅ Rollup complete: $EMAIL_COUNT emails"
echo ""
echo "---"
echo "💡 **Need more details?** Ask me to 'read email from [sender]' or 'search email [keyword]'"
