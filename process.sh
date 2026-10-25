
#!/bin/bash

echo "=========================================="
echo "     TOP 3 PROCESSES BY MEMORY USAGE"
echo "=========================================="

printf "%-10s %-20s %-10s %-10s\n" "PID" "COMMAND" "%MEM" "%CPU"

ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -n 4 | tail -n 3 |
while read -r pid command mem cpu
do
    printf "%-10s %-20s %-10s %-10s\n" "$pid" "$command" "$mem" "$cpu"
done

echo "=========================================="
