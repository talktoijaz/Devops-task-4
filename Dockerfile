FROM centos:latest

RUN yum install net-tools httpd php -y

COPY * /var/www/html/

EXPOSE 80/tcp

CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
