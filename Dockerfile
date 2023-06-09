FROM fedora:rawhide 
RUN dnf update
RUN dnf install -y nginx-1.24.0
COPY ./nginx_conf/default.conf  /etc/nginx/conf.d/default.conf
