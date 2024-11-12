# Use a lightweight Nginx image as the base
FROM nginx:alpine

# Copy your app's static files to Nginx's default directory
COPY . /usr/share/nginx/html

# Expose the port Nginx listens on
EXPOSE 81

# Command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]