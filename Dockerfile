# Use Apache2 official image
FROM httpd:latest

# Copy website files into Apache's document root
COPY . /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80

