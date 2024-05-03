#!/bin/sh

# Official Alpine Mirror to sync from
UPSTREAM_MIRROR=rsync://rsync.alpinelinux.org/alpine

# Local directory to store the mirror
LOCAL_MIRROR_DIR=/var/spool/apk-mirror

# Alpine versions to mirror (adjust as needed)
VERSIONS="v3.18 v3.19"

# Repository types to sync
REPOS="main community"

# Define the architecture to mirror
ARCH="x86_64" # For AMD64 architecture

# Iterate over each version and repo to sync for the defined architecture
for version in $VERSIONS; do
    for repo in $REPOS; do
        # Construct the remote and local paths for sync operations
        REMOTE_PATH="${UPSTREAM_MIRROR}/${version}/${repo}/${ARCH}"
        LOCAL_PATH="${LOCAL_MIRROR_DIR}/${version}/${repo}/${ARCH}"

        # Ensure the local directory exists
        mkdir -p "$LOCAL_PATH"

        # Execute the rsync command
        rsync -av --delete-during --exclude-from=rsync_exclude $REMOTE_PATH $LOCAL_PATH
    done
done