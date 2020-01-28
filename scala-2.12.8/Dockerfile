FROM ubuntu:18.04

#Installing java

RUN apt-get update && apt-get install -y openjdk-8-jdk
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

#Installing wget
RUN apt-get update && apt-get install -y wget

#Installing scala
#RUN wget https://downloads.lightbend.com/scala/2.13.1/scala-2.13.1.deb  -P /~
RUN mkdir /root/scala
COPY scala-2.12.8.deb /root/scala
RUN dpkg -i /root/scala/scala-2.12.8.deb

CMD ["/bin/bash"]
