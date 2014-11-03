FROM switchback:builder

ENV JAVA_VERSION 8u40

RUN apt-get update && apt-get install -y curl openjdk-8-jdk="$JAVA_VERSION"* unzip wget
