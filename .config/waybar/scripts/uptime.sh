#!/bin/bash

# Get pretty uptime
uptime_output=$(uptime -p)

# Extract hours and minutes
hours=$(echo "$uptime_output" | grep -oE '[0-9]+ hour' | grep -oE '[0-9]+')
minutes=$(echo "$uptime_output" | grep -oE '[0-9]+ minute' | grep -oE '[0-9]+')

# Default to 0 if empty
hours=${hours:-0}
minutes=${minutes:-0}

# Format as hh:mm (zero-padded)
printf "%02d:%02d\n" "$hours" "$minutes"
