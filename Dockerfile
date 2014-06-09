FROM ubuntu

MAINTAINER Nathan W. <nathan@frcv.net>

RUN apt-get update
RUN apt-get install -q -y openjdk-7-jre-headless
RUN apt-get clean

ADD https://github.com/takezoe/gitbucket/releases/download/2.0/gitbucket.war /opt/gitbucket.war

RUN ln -s /gitbucket /root/.gitbucket

VOLUME /gitbucket

EXPOSE 8080 29418

CMD ["/usr/bin/java", "-Duser.timezone=America/Chicago", "-jar", "/opt/gitbucket.war"]
