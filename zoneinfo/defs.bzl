def _zoneinfo_repository_impl(repository_ctx):
    # Create a symlink to the zoneinfo directory
    repository_ctx.symlink("/usr/share/zoneinfo", "zoneinfo_dir")

    # Create a BUILD file that defines a filegroup for the zoneinfo files
    repository_ctx.file("BUILD", """
filegroup(
    name = "zoneinfo",
    srcs = ["zoneinfo_dir"],
    visibility = ["//visibility:public"],
)
    """)

zoneinfo_repository = repository_rule(
    implementation = _zoneinfo_repository_impl,
    local = True,
)
