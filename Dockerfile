FROM debian:wheezy

MAINTAINER Nathan W. <nathan@frcv.net>

RUN apt-get --quiet --yes update && \ 
    apt-get --quiet --yes install \
      openjdk-7-jre-headless \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists

ENV VER 3.8
ADD https://github.com/takezoe/gitbucket/releases/download/$VER/gitbucket.war /opt/gitbucket.war

RUN ln -s /gitbucket /root/.gitbucket

VOLUME /gitbucket

EXPOSE 8080 29418

CMD ["/usr/bin/java", "-jar", "/opt/gitbucket.war"]
