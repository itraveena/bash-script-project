##A script that creates a backup of a directory and its files.

#!/bin/bash
echo "Enter the directory path to backup: "
read SOURCE_DIR

echo "Enter the backup directory path: "
read BACKUP_DIR

BACKUP_FILE_NAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"
BACKUP_FILE_PATH="$BACKUP_DIR/$BACKUP_FILE_NAME"

tar -czvf "$BACKUP_FILE_PATH" "$SOURCE_DIR"
echo "Backup saved to $BACKUP_FILE_PATH"
