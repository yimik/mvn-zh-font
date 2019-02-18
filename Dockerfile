FROM tomcat:8-alpine
MAINTAINER Yimik <398075986@163.com>

ADD fonts/* /usr/share/fonts/truetype/
RUN apk add tzdata && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && sed -e 2a\CATALINA_OPTS="-Djava.security.egd=file:/dev/./urandom" testfile
