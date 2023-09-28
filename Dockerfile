FROM nginx:latest
COPY ./src /usr/share/nginx/html
# COPY ./conf/nginx.conf /etc/nginx/conf.d/nginx.conf