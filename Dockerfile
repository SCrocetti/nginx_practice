FROM nginx

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration file
COPY nginx.conf /etc/nginx/

# Copy your "hello world" HTML file to the web root
COPY ./my_page /usr/share/nginx/html/

# Expose port 8080 for incoming HTTP traffic
EXPOSE 8080