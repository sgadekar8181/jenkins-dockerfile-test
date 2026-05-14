# Use the official Apache image from Docker Hub
FROM httpd:2.4

# Set the working directory (optional, but good practice)
WORKDIR /usr/local/apache2/htdocs/

# Copy your local index.html into the container's web directory
COPY ./index.html .

# Apache listens on port 80 by default
EXPOSE 80
