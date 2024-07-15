FROM tomcat:8-jdk8-temurin-jammy
MAINTAINER Yimik <398075986@163.com>

ADD fonts/* /usr/share/fonts/truetype/
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
