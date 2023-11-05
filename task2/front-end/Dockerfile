# Use the official Nginx image as a parent image
FROM nginx:latest

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration file into the container
COPY softy-pinko-front-end.conf /etc/nginx/conf.d/default.conf

# Create the directory for softy-pinko-front-end
RUN mkdir -p /var/www/html/softy-pinko-front-end

# Copy the static content into the specified directory in the container
COPY softy-pinko-front-end /var/www/html/softy-pinko-front-end

# Expose port 9000 to the outside world
EXPOSE 9000

# Start Nginx when the container has provisioned
CMD ["nginx", "-g", "daemon off;"]
