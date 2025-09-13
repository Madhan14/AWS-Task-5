# Use Nginx image
FROM nginx:alpine

# Remove default Nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files from the repo root to Nginx html folder
COPY ./ /usr/share/nginx/html/

# Container listens on 80 (mapped to 8899 on host)
EXPOSE 80


# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
