# Use an official Ubuntu base image
FROM ubuntu:latest

# Update the package repository and install Apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    rm -rf /var/lib/apt/lists/*
RUN echo "first version" > /var/www/html/index.html

# Expose port 80 for incoming HTTP traffic
EXPOSE 80

# Start Apache in the foreground when the container starts
CMD ["apache2ctl", "-D", "FOREGROUND"]
