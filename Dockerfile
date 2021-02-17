FROM nginx:alpine
WORKDIR /etc/nginx/conf.d/
RUN apk add coreutils
# Copy the EntryPoint
COPY ./entrypoint.sh /entrypoint.sh
COPY ./default.conf .
RUN chmod +x /entrypoint.sh
RUN ls

EXPOSE 80

# this will start the nginx
ENTRYPOINT ["/entrypoint.sh"]

# we skip nginx command here, because it is executed in entrypoint.sh anyway
# we do not override this command anyway
# CMD ["nginx", "-g", "daemon off;"]
