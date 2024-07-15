FROM 8-jdk8-temurin-jammy
MAINTAINER Yimik <398075986@163.com>

ADD fonts/* /usr/share/fonts/truetype/
RUN apk add tzdata && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone && sed -e 2a\CATALINA_OPTS=\"-Djava.security.egd=file:/dev/./urandom\" /usr/local/tomcat/bin/catalina.sh
