# Download base image ubuntu 18.04
FROM ubuntu:16.04

# Update Ubuntu Software repository
RUN apt update

# Install nginx, php-fpm and supervisord from ubuntu repository
RUN apt install -y nginx php-fpm supervisor && \
    rm -rf /var/lib/apt/lists/* && \
    apt clean
RUN echo "<H1>Hello from Angel</H1>" > /var/www/html/index.nginx-debian.html 
RUN apt install mc

# Expose Port for the Application 
EXPOSE 80

#enabled nginx 
CMD ["nginx", "-g", "daemon off;"]