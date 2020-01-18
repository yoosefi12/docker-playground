FROM debian

#Installing java
ADD openjdk-8u40-b25-linux-x64-10_feb_2015.tar.gz /~/java
ENV JAVA_HOME /~/java/java-se-8u40-ri
ENV PATH="/root/java/java-se-8u40-ri/bin:${PATH}"

#Installing wget
RUN apt-get update && apt-get install -y wget

#Installing scala
#RUN wget https://downloads.lightbend.com/scala/2.13.1/scala-2.13.1.deb  -P /~
RUN mkdir /~/scala
COPY scala-2.12.10.deb /~/scala
RUN dpkg -i /~/scala/scala-2.12.10.deb


CMD ["/bin/bash"]
