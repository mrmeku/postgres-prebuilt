docker build -t postgres-prebuilt-bazel .
docker run \
  -v /Users/mrmeku/postgres-prebuilt:/src/workspace \
  -v /tmp/build_output:/tmp/build_output \
  -w /src/workspace \
  postgres-prebuilt-bazel:latest \
  --output_user_root=/tmp/build_output \
  build //postgres:for_all_platforms