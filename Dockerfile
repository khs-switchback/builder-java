FROM switchback/builder

ENV JAVA_VERSION 8u40

RUN apt-get update && \
    apt-get install -y openjdk-8-jdk="$JAVA_VERSION"* maven && \
    rm -rf /var/lib/apt/lists/*

# add script to run
ADD *.sh /usr/local/bin/

# run
CMD /bin/bash /usr/local/bin/run.sh $BUILD_NUMBER
