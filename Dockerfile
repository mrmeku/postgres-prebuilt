FROM ubuntu:24.04

RUN apt-get update && apt-get install -y build-essential libreadline-dev zlib1g-dev flex bison libxml2-dev libxslt-dev libssl-dev libxml2-utils xsltproc ccache pkg-config
RUN apt-get install -y curl
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install tzdata
RUN curl -fLo /usr/local/bin/bazel https://releases.bazel.build/7.1.1/release/bazel-7.1.1-linux-arm64 && \
chown root:root /usr/local/bin/bazel && \
chmod 0755 /usr/local/bin/bazel
ENTRYPOINT /usr/local/bin/bazel
