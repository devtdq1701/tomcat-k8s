FROM tomcat:7.0-jre8-alpine
RUN apk add --no-cache tzdata
RUN apk --no-cache add fontconfig ttf-dejavu
ENV TZ=Asia/Ho_Chi_Minh
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./sample.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
WORKDIR /opt/tomcat/bin/
CMD ["catalina.sh", "run"]