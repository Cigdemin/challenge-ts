#Alpine Linux for minimize and secure image
FROM alpine:3.18

# Install necessary packages: Nginx and remove cache
RUN apk --no-cache add nginx

# Create a non-root user and group to run Nginx for security (Least Privilege Principle)
RUN addgroup -S nginx && adduser -S -G nginx nginx

#Expose to Port 80 for HTTP
EXPOSE 80

#Working directory to Nginx's default directory
WORKDIR /usr/share/nginx/html

#Copy the HTML file to the container with nginx user for not to run as non-root user
COPY --chown=nginx:nginx ./index.html /usr/share/nginx/html

#Container runs as a non-root user for security
USER nginx

#Run systemctl on Nginx (daemon mode off, suitable for containers)
CMD ["nginx", "-g", "daemon off;"]

#ENTRYPOINT to container to always run a specific command
ENTRYPOINT ["nginx", "-g", "daemon off;"]
