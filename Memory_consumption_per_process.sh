#!/bin/sh

# make logfile
LOG_ROTATION=`date '+%Y%m%d%H'`
LOG_TIME=`date '+%Y/%m/%d_%H:%M:%S'`
SHORT_HOSTNAME=`hostname -s`
LOG_FILE="/var/log/top_ps/${SHORT_HOSTNAME}_${LOG_ROTATION}_top_ps.log"

# sleep_interval
SLEEP_INTERVAL=30

# top_ps function
top_ps() {
  LOG_TIME=`date '+%Y/%m/%d_%H:%M:%S'`

  # date command
  echo -e "[date] \n${LOG_TIME}\n" >> $LOG_FILE

  # top command
  echo -e "top cmd: ${LOG_TIME} \n----------------" >> $LOG_FILE
  top -n 1 -b >> $LOG_FILE

  # ps command
  echo -e "ps cmd: ${LOG_TIME} \n----------------" >> $LOG_FILE
  ps aux --sort -rss >> $LOG_FILE
}

top_ps
sleep ${SLEEP_INTERVAL}; top_ps
