# demo_toolchain.bzl

DEMO_TOOLCHAIN = "@rules_demo//:demo_toolchain_type"

def _demo_toolchain_impl(ctx):
    return [
        platform_common.ToolchainInfo(
            platform = ctx.attr.platform,
        ),
    ]

demo_toolchain = rule(
    _demo_toolchain_impl,
    attrs = {
        "platform": attr.string(),
    },
)
