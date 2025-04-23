FROM debian:bullseye

RUN apt update -y && apt upgrade -y

RUN apt install -y php-fpm
RUN apt install -y php-mysqli
RUN apt install -y curl

RUN mkdir -p /run/php && chown www-data:www-data /run/php

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d
WORKDIR /var/www/html

COPY ./tools/script.sh .
RUN chmod +x script.sh

EXPOSE 9000

ENTRYPOINT [ "/var/www/html/script.sh" ]

CMD ["php-fpm7.4", "-F"]
