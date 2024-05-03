# Start from official ubuntu image
FROM ubuntu

# Install xz-utils and apt-mirror
RUN apt-get update && apt-get install -y xz-utils apt-mirror && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy your mirror configuration
COPY mirror.list /etc/apt/mirror.list

# Ensure the base directory for apt-mirror exists
RUN mkdir -p /var/spool/apt-mirror

CMD ["apt-mirror"]