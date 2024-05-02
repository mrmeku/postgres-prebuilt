This repository builds binary releases for postgres.

It is built using the Bazel module at https://registry.bazel.build/modules/libarchive
using a musl toolchain from https://registry.bazel.build/modules/hermetic_cc_toolchain
so it is fully statically-linked and does not depend on any libc version at runtime.

## Releasing

1. MODULE.bazel should point to the latest libarchive on Bazel Central Registry.
   Renovate bot will send a PR.
2. Push a tag to the repo, will kick off automated build on GitHub Actions.
