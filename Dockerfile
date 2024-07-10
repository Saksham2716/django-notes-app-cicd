# Use an official Nginx base image
FROM nginx:alpine

# Copy your HTML, CSS, and JS files into the Nginx default directory
COPY index.html /usr/share/nginx/html/
COPY main.css /usr/share/nginx/html/
COPY app.js /usr/share/nginx/html/

# Expose port 8000 (default Nginx port)
EXPOSE 8000

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
