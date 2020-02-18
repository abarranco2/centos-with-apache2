FROM centos:7

MAINTAINER Alex Barranco <abarranco@ilg.cat>


RUN yum update -y
RUN yum install -y httpd httpd-tools
RUN yum clean all


EXPOSE 80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
