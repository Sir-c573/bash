#!/bin/bash
echo "     SERVER HEALTH CHECK"
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"

echo "--- CPU Usage ---"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " $2 "%"}'

echo "--- Memory Usage ---"
free -h

echo "--- Disk Usage ---"
df -h /


echo "--- Internet ---"
if ping -c 1 google.com > /dev/null 2>&1; then
    echo "Internet: OK"
else
    echo "Internet: DOWN"
fi
"
echo "Health check completed."

