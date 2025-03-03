FROM centos:7
MAINTAINER hiralpal03@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page285/viking.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip viking.zip
RUN cp -rvf viking/* .
RUN rm -rf viking viking.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 443
