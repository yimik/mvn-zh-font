FROM maven:3-jdk-8-alpine
MAINTAINER Yimik <398075986@163.com>

ADD fonts/* /usr/share/fonts/truetype/
RUN apk add tzdata && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
