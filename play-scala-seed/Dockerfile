FROM openjdk

ENV TZ Asia/Tehran
EXPOSE 9000
ADD target/universal/*.tgz /app/
WORKDIR /app/play-scala-seed-1.0-SNAPSHOT

ENTRYPOINT ["bin/play-scala-seed"]
