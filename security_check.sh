#!/bin/bash
#
# Script to check for failed logins in auth.log file

# Set variable for formatted date
today=$(date +%Y-%m-%d)

# Search auth.log file for failed login text and cat to new file with date var
grep "FAILED LOGIN" /var/log/auth.log > failed_logins_$today

# Use word count command to list the number of failed login attempts and cat
# to new file
wc -l failed_logins_$today > login_attempts_$today
