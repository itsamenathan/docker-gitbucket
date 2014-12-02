FROM ubuntu:trusty

MAINTAINER Nathan W. <nathan@frcv.net>

RUN apt-get update
RUN apt-get install -q -y openjdk-7-jre-headless
RUN apt-get clean

ENV VER 2.6
ADD https://github.com/takezoe/gitbucket/releases/download/$VER/gitbucket.war /opt/gitbucket.war

RUN ln -s /gitbucket /root/.gitbucket

VOLUME /gitbucket

EXPOSE 8080 29418

CMD ["/usr/bin/java", "-Duser.timezone=America/Chicago", "-jar", "/opt/gitbucket.war"]
