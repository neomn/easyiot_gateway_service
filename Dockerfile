FROM fedora:rawhide 
RUN dnf update -y
RUN dnf install -y nginx-1.24.0
COPY ./nginx_conf/nginx.conf  /etc/nginx/nginx.conf
EXPOSE 80
CMD ["sh" "-c" " \
      nginx -g \"daemon off;\"   \
"]
