#!/bin/bash

#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <log-directory>"
    exit 1
fi

LOG_DIR="$1"
ARCHIVE_DIR="$HOME/log_archives"
LOG_FILE="$ARCHIVE_DIR/archive.log"

if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Log directory does not exist"
    exit 1
fi

mkdir -p "$ARCHIVE_DIR"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"

tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" -C "$LOG_DIR" . || exit 1

echo "[$(date)] Archived $LOG_DIR to $ARCHIVE_NAME" >> "$LOG_FILE"

echo "Logs archived successfully!"
echo "Archive location: $ARCHIVE_DIR/$ARCHIVE_NAME"

