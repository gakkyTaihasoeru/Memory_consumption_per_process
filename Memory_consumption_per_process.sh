#!/bin/sh

# logfile
LOG_DAY=`date '+%Y%m%d'`
LOG_TIME=`date '+%Y%m%d_%H:%M:%S'`
SHORT_HOSTNAME=`hostname -s`
LOG_FILE="/var/log/${SHORT_HOSTNAME}_${LOG_DAY}_top_ps.log"

# top
echo -e "top cmd: ${LOG_TIME} \n---------------" >> $LOG_FILE
top -n 1 -b >> $LOG_FILE

# ps
echo -e "ps cmd: ${LOG_TIME} \n---------------" >> $LOG_FILE
ps aux --sort -rss >> $LOG_FILE
