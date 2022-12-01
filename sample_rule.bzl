def _sample_rule_impl(ctx):
    demo_toolchain = ctx.toolchains["//toolchains:demo_toolchain_type"]
    toolchain_platform = demo_toolchain.platform if demo_toolchain else "no toolchain for platform %s" % ctx.fragments.platform.platform
    message = "%s: %s" % (ctx.label, toolchain_platform)
    print(message)

    manifest_file = ctx.actions.declare_file("manifest_" + ctx.label.name)
    ctx.actions.write(manifest_file, message)
    return [DefaultInfo(files = depset([manifest_file]))]

sample_rule = rule(
    implementation = _sample_rule_impl,
    toolchains = [
        config_common.toolchain_type("//toolchains:demo_toolchain_type", mandatory = False),
    ],
)
