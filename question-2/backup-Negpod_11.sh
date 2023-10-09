#!/usr/bin/env bash
# backing up our directory on another computer system or server

# Remote server details
HOST="2f05c1f8800b.3be8ebfc.alu-cod.online"
USERNAME="2f05c1f8800b"

# Directory to be backed up
SOURCE_DIR="backup-Negpod_1.sh"

# Location for backup on the remote server
REMOTE_DIR="summative/0923-2023S"

# Backup file name
BACKUP_FILE="${SOURCE_DIR}.tar.gz"

# Compress the source directory into a tarball
tar -czf "${BACKUP_FILE}" "${SOURCE_DIR}"

# Upload the backup file to the remote server using SCP
scp "${BACKUP_FILE}" "${USERNAME}@${HOST}:${REMOTE_DIR}"

# Clean up the local backup file
rm "${BACKUP_FILE}
