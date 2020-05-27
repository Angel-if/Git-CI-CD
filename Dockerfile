# Download base image ubuntu 18.04
FROM ubuntu:16.04

# Update Ubuntu Software repository
RUN apt update

# Install nginx, php-fpm and supervisord from ubuntu repository
RUN apt install -y nginx php-fpm supervisor && \
    rm -rf /var/lib/apt/lists/* && \
    apt clean

# Expose Port for the Application 
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]