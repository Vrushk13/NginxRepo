# Step 1: Use official NGINX base image
FROM nginx:latest

# Step 2: Remove default nginx web page
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy our application files
COPY index.html /usr/share/nginx/html/

# Step 4: Expose port 80
EXPOSE 80

# Step 5: Start nginx in foreground (already default)
CMD ["nginx", "-g", "daemon off;"]

