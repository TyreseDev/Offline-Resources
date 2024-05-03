# Start from official Alpine image
FROM alpine:latest

# Install rsync and any other dependencies
RUN apk update && apk add --no-cache rsync

# Set WORKDIR
WORKDIR /workspace

# Add the mirror sync script and optional exclude list
COPY sync_mirror.sh /workspace/
COPY rsync_exclude /workspace/
RUN chmod +x /workspace/sync_mirror.sh

CMD ["sh", "sync_mirror.sh"]