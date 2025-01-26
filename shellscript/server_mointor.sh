#!/bin/bash

# Function to check server status
check_server() {
    local server=$1
    ping -c 1 -W 2 "$server" > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "$server is down"
        send_mail "$server"
    else
        echo "$server is up"
    fi
}

# Function to send an email notification
send_mail() {
    local server=$1
    local subject="Alert: Server Down - $server"
    local body="The server $server is unreachable as of $(date). Please investigate the issue."
    echo "$body" | mail -s "$subject" rakeshkdevops001@gmail.com
    echo "Alert email sent for $server"
}

# List of servers to monitor
servers=(
    "54.172.157.193"
)

# Main loop to check all servers
for server in "${servers[@]}"; do
    check_server "$server"
done

