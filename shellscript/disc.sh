#!/bin/bash

# Prompt the user to enter a threshold value
echo "Enter the disk size threshold (in %):"
read threshold

# Get the current disk usage as a percentage for the root (/) partition
current_usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

# Compare the current disk usage with the threshold
if [ "$current_usage" -gt "$threshold" ]; then
    echo "Warning: Disk usage is high! Current usage is $current_usage%."
else
    echo "Disk usage is under control. Current usage is $current_usage%."
fi
