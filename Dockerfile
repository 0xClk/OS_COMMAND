FROM python:3.10-alpine3.18

# Add the Alpine repositories
RUN echo "https://dl-cdn.alpinelinux.org/alpine/latest-stable/main" >> /etc/apk/repositories && \
    echo "https://dl-cdn.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories

# Set the working directory
WORKDIR /app

# Environment variables
ENV PORT 1337

# Copy application files
COPY main.py /app/
COPY flag.txt /app/
COPY .flag.js.txt /app/
# Install Python dependencies
RUN pip install flask

# Expose the port
EXPOSE $PORT

# Run the Flask application
CMD ["python", "main.py"]
                                                                                                                    
