# Use an official Nginx base image
FROM nginx:alpine

# Copy your HTML, CSS, and JS files into the Nginx default directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Expose port 80 (default Nginx port)
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
