#!/bin/bash
LOG_DIR="/var/log/myapp"

LOG_FILE="app.log"

MAX_BACKUP=3

##log rotation

for ((i=$MAX_BACKUP; i>0; i--)); do
  if [ -f "$LOG_DIR/$LOG_FILE.$i.gz" ]; then
    next=$((i+1))
    mv "$LOG_DIR/$LOG_FILE.$i.gz" "$LOG_DIR/$LOG_FILE.$next.gz"
  fi
done

## lets compress
if [ -f "$LOG_DIR\$LOG_FILE" ]; then
  mv "$LOG_DIR\$LOG_FILE" ""$LOG_DIR\$LOG_FILE.1"
  gzip "$LOG_DIR\$LOG_FILE.1"
fi

## generate back up file

touch "$LOG_DIR\$LOG_FILE"

##delete logs beyond limits

if [ -f "$LOG_DIR/$LOG_FILE.$(($MAX_BACKUP+1)).gz" ]; then
  rm "$LOG_DIR/$LOG_FILE.$(($MAX_BACKUP+1)).gz"
fi

  
