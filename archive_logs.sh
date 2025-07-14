#!/bin/bash

# Set log directory and archive directory
LOG_DIR=/var/logs/app
ARCHIVE_DIR=/var/logs/app/archive

# Create archive directory if it doesn't exist
mkdir -p $ARCHIVE_DIR

# Find logs older than 1 day and archive them
find $LOG_DIR -type f -mtime +1 -exec mv {} $ARCHIVE_DIR \;
