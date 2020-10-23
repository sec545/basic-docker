FROM        busybox:1.32-uclibc

WORKDIR /var/www

COPY --chown=www-data:www-data site /var/www

USER www-data

EXPOSE 8080

ENTRYPOINT ["/bin/busybox", "httpd", "-f", "-p", "8080", "-h", "/var/www"]

