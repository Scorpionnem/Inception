FROM debian:bullseye

RUN apt update -y && apt upgrade -y
RUN apt install -y nginx openssl

RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/certificate.crt -keyout /etc/nginx/ssl/certificate.key -subj "/C=FR/ST=NA/L=Angouleme/O=42/OU=42/CN=$DOMAIN_NAME/UID=mbatty"

RUN mkdir -p /var/run/nginx
COPY ./conf/nginx.conf /etc/nginx/conf.d

#TO THE OUTSIDE !
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
