FROM ubuntu:22.04

# Create a non root user
RUN useradd -m sandbox

# Create a folder for scripts
WORKDIR /home/sandbox

# Copy the entrypoint script
COPY entrypoint.sh .

# Set script permissions
RUN chmod +x entrypoint.sh

# Switch to non root user
USER sandbox

# Set entrypoint
ENTRYPOINT ["./entrypoint.sh"]

# Default command
CMD ["bash"]