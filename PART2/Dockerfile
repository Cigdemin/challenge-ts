#Alpine Linux latest for minimize image
FROM alpine:latest

#Nginx and remove cache
RUN apk --no-cache add nginx

#non-root user and group to run Nginx for security (Least Privilege Principle)
RUN addgroup -S nginx && adduser -S -G nginx nginx

EXPOSE 80

WORKDIR /usr/share/nginx/html

#Copy the with nginx user
COPY --chown=nginx:nginx ./index.html /usr/share/nginx/html

#Container runs as a non-root user for security
USER nginx

#Run systemctl on Nginx (daemon mode off)
CMD ["nginx", "-g", "daemon off;"]

ENTRYPOINT ["nginx", "-g", "daemon off;"]
