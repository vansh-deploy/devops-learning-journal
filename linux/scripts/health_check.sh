#!/bin/bash
# health_check.sh — Basic server health monitoring
# Author: Vansh Singh
# Usage: bash health_check.sh

TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
LOGFILE="/var/log/health_check.log"

echo "===== Health Check: $TIMESTAMP =====" | tee -a $LOGFILE

# 1. Check if Nginx is running
if systemctl is-active --quiet nginx; then
    echo "✓ Nginx: RUNNING" | tee -a $LOGFILE
else
    echo "✗ Nginx: STOPPED — Starting now..." | tee -a $LOGFILE
    sudo systemctl start nginx
fi

# 2. Check disk usage
DISK=$(df -h / | awk 'NR==2 {print $5}')
echo "✓ Disk Usage: $DISK" | tee -a $LOGFILE

# 3. Check memory
MEM=$(free -h | awk 'NR==2 {print "Used: "$3" / Total: "$2}')
echo "✓ Memory: $MEM" | tee -a $LOGFILE

# 4. Check HTTP response
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost)
echo "✓ HTTP Response: $HTTP_CODE" | tee -a $LOGFILE

echo "=====================================" | tee -a $LOGFILE
