FROM debian

#Installing java
ADD jdk8u232-linux64.tar.gz /root/java/
ENV JAVA_HOME /root/java/jdk8u232
ENV PATH="/root/java/jdk8u232/bin:${PATH}"

#Installing wget
RUN apt-get update && apt-get install -y wget

#Installing scala
#RUN wget https://downloads.lightbend.com/scala/2.13.1/scala-2.13.1.deb  -P /~
RUN mkdir /root/scala
COPY scala-2.12.8.deb /root/scala
RUN dpkg -i /root/scala/scala-2.12.8.deb


CMD ["/bin/bash"]
