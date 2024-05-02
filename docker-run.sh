docker build -t postgres-prebuilt-ubuntu .
docker run \
  -it \
  -v //tmp/bazel-docker-cache:/bazel-docker-cache \
  -v /Users/mrmeku/postgres-prebuilt:/src/postgres-prebuilt \
  -v /tmp/build_output:/tmp/build_output \
  -w /src/postgres-prebuilt \
  --entrypoint bash \
  postgres-prebuilt-ubuntu:latest 
