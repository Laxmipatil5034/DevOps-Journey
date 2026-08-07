

#!/bin/bash

# ==========================================
# DevOps Server Health & Error Handling
# ==========================================

LOG_FILE="health_check.log"

echo "==========================================" | tee "$LOG_FILE"
echo "       DEVOPS SERVER HEALTH CHECK" | tee -a "$LOG_FILE"
echo "==========================================" | tee -a "$LOG_FILE"

ERRORS=0


# ------------------------------------------
# Function: Check Command
# ------------------------------------------

check_command() {

    COMMAND_NAME=$1

    echo ""
    echo "Checking $COMMAND_NAME..." | tee -a "$LOG_FILE"

    if command -v "$COMMAND_NAME" >/dev/null 2>&1
    then
        echo "✅ $COMMAND_NAME is installed" | tee -a "$LOG_FILE"
    else
        echo "❌ ERROR: $COMMAND_NAME is not installed" | tee -a "$LOG_FILE"
        ERRORS=$((ERRORS + 1))
    fi
}


# ------------------------------------------
# Check Git
# ------------------------------------------

check_command git


# ------------------------------------------
# Check Docker
# ------------------------------------------

check_command docker


# ------------------------------------------
# Check Docker Access
# ------------------------------------------

echo ""
echo "Checking Docker access..." | tee -a "$LOG_FILE"

if sudo docker info >/dev/null 2>&1
then
    echo "✅ Docker is working correctly" | tee -a "$LOG_FILE"
else
    echo "❌ ERROR: Docker access failed" | tee -a "$LOG_FILE"
    echo "Possible reason: Docker permission or service problem" | tee -a "$LOG_FILE"
    ERRORS=$((ERRORS + 1))
fi


# ------------------------------------------
# Check Nginx
# ------------------------------------------

echo ""
echo "Checking Nginx..." | tee -a "$LOG_FILE"

if command -v nginx >/dev/null 2>&1
then

    echo "✅ Nginx is installed" | tee -a "$LOG_FILE"

    if systemctl is-active --quiet nginx
    then
        echo "✅ Nginx is running" | tee -a "$LOG_FILE"
    else
        echo "❌ ERROR: Nginx is not running" | tee -a "$LOG_FILE"
        ERRORS=$((ERRORS + 1))
    fi

else

    echo "❌ ERROR: Nginx is not installed" | tee -a "$LOG_FILE"
    ERRORS=$((ERRORS + 1))

fi


# ------------------------------------------
# Check Disk Usage
# ------------------------------------------

echo ""
echo "Checking disk usage..." | tee -a "$LOG_FILE"

DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "Disk usage: $DISK_USAGE%" | tee -a "$LOG_FILE"

if [ "$DISK_USAGE" -lt 80 ]
then
    echo "✅ Disk usage is safe" | tee -a "$LOG_FILE"
else
    echo "❌ ERROR: Disk usage is above 80%" | tee -a "$LOG_FILE"
    ERRORS=$((ERRORS + 1))
fi


# ------------------------------------------
# Check Memory
# ------------------------------------------

echo ""
echo "Checking memory..." | tee -a "$LOG_FILE"

MEMORY_USAGE=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')

echo "Memory usage: $MEMORY_USAGE%" | tee -a "$LOG_FILE"

if [ "$MEMORY_USAGE" -lt 80 ]
then
    echo "✅ Memory usage is safe" | tee -a "$LOG_FILE"
else
    echo "❌ ERROR: Memory usage is above 80%" | tee -a "$LOG_FILE"
    ERRORS=$((ERRORS + 1))
fi


# ------------------------------------------
# Final Result
# ------------------------------------------

echo ""
echo "==========================================" | tee -a "$LOG_FILE"

if [ "$ERRORS" -eq 0 ]
then

    echo "🎉 HEALTH CHECK PASSED" | tee -a "$LOG_FILE"
    echo "Server is ready for deployment." | tee -a "$LOG_FILE"

else

    echo "⚠️ HEALTH CHECK FAILED" | tee -a "$LOG_FILE"
    echo "Total errors found: $ERRORS" | tee -a "$LOG_FILE"
    echo "Please fix the errors before deployment." | tee -a "$LOG_FILE"

fi

echo "==========================================" | tee -a "$LOG_FILE"

exit "$ERRORS"	

