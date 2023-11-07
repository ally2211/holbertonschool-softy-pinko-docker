FROM nginx:latest

# Remove the default nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy the proxy.conf file into the container
COPY ./proxy.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
