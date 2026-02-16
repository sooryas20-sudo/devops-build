# Use the lightweight Nginx image
FROM nginx:alpine

# Copy the actual application files from the build/ directory
COPY build/ /usr/share/nginx/html/

# Expose Port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
