load("toolchain.bzl", "demo_toolchain")

package(default_visibility = ["//visibility:public"])

toolchain_type(
    name = "demo_toolchain_type",
)

demo_toolchain(
    name = "demo_1",
    platform = "platform_1",
)
toolchain(
    name = "toolchain_1",
    target_compatible_with = ["//platforms:cpu_1"],
    toolchain = "demo_1",
    toolchain_type = "demo_toolchain_type",
)

demo_toolchain(
    name = "demo_2",
    platform = "platform_2",
)
toolchain(
    name = "toolchain_2",
    target_compatible_with = ["//platforms:cpu_2"],
    toolchain = "demo_2",
    toolchain_type = "demo_toolchain_type",
)