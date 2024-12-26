# Use the latest version of the official Nginx image with the latest Alpine version
FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the static website files into the container
COPY ./index.html ./style.css ./License.txt ./css/ ./js/ ./images/ ./

# Expose port 80 to access the site
EXPOSE 5000

# Nginx will automatically start when the container runs
CMD ["nginx", "-g", "daemon off;"]
