FROM sarankon/centos:7-systemd

RUN yum update; yum -y install httpd; yum clean all; systemctl enable httpd.service

EXPOSE 80 443

VOLUME ["/var/www/html"]

CMD ["/usr/sbin/init"]
