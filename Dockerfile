# Use a minimal Python base image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy your static website files into the container
COPY src/ /app

# Expose port 8000 (or any other port you prefer)
EXPOSE 8000

# Start a simple HTTP server using Python
CMD ["python", "-m", "http.server", "8000"]