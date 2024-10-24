#!/bin/sh

MOUNT_POINT=~/gdrive
REMOTE_NAME=gdrive

# Check if the mount point exists, if not, create it
if [ ! -d "$MOUNT_POINT" ]; then
    mkdir -p "$MOUNT_POINT"
fi

# Function to check internet connectivity
check_internet() {
    if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
        return 0 # Internet is available
    else
        return 1 # No internet
    fi
}

# Check if there is an internet connection
if ! check_internet; then
    echo "No internet connection. Please connect to the internet and try again."
    exit 1
fi

# Check if gdrive is already mounted
if mountpoint -q "$MOUNT_POINT"; then
    echo "Google Drive is already mounted. Unmounting..."
    fusermount -u "$MOUNT_POINT"
    echo "Google Drive unmounted."
else
    echo "Mounting Google Drive..."
    rclone mount "$REMOTE_NAME":/ "$MOUNT_POINT" --vfs-cache-mode full &
    echo "Google Drive mounted at $MOUNT_POINT."
fi
