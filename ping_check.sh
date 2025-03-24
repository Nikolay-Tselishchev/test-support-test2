#!/bin/bash

HOST="ya.ru"
LOG_FILE="ping_check.log"

ping -c 1 $HOST > /dev/null

if [ $? -eq 0 ]; then
    echo "$(date): Host $HOST is up." >> $LOG_FILE
else
    echo "$(date): Host $HOST is down." >> $LOG_FILE
fi

