FROM gcr.io/bazel-public/bazel:latest

# Install system utilities needed by rules_foreign_cc for postgres compilation
#
# https://wiki.postgresql.org/wiki/Compile_and_Install_from_source_code
USER root
RUN apt-get update && apt-get install -y build-essential libreadline-dev zlib1g-dev flex bison libxml2-dev libxslt-dev libssl-dev libxml2-utils xsltproc ccache pkg-config