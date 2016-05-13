FROM ubuntu:14.04
MAINTAINER Junrui Chen "cfl521133@gmail.com"
ENV REFRESHED_AT 2016-5-13
RUN apt-get update
RUN apt-get -y -q install nginx
RUN mkdir -p /var/www/html
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 443
