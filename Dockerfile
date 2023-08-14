# Use an official Nginx runtime as the base image
FROM nginx:alpine

# Copy the production build from your local 'build' directory to the Nginx HTML directory
COPY build/ /usr/share/nginx/html

# Expose the desired port (default is 80 for Nginx)
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
