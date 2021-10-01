# Use no dependencies to keep image size small
FROM bash:5
# Set workdir to be used
WORKDIR /home
# Create data volume
VOLUME /home/data
# Copy all files not in the .dockerignore file to the data dir
COPY . data/
# Declare fake command to be executed (should be skipped)
CMD ["echo", "'fine...'"]
