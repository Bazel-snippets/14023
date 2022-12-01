def _platform_transition_impl(_settings, attr):
    print("\ntransition %s transitions %s to platform %s" % (attr.name, attr.deps, attr.transition_to_platform))
    return {"//command_line_option:platforms": attr.transition_to_platform}

platform_transition = transition(
    implementation = _platform_transition_impl,
    inputs = [],
    outputs = ["//command_line_option:platforms"],
)

def _transitioner_rule_impl(ctx):
    # print("_transitioner_rule_impl: ctx.attr.deps = %s" % ctx.attr.deps)
    depsets = []
    for dep in ctx.attr.deps:
        depsets.append(dep.files)
    return DefaultInfo(files = depset(transitive = depsets))

transitioner_rule = rule(
    implementation = _transitioner_rule_impl,
    attrs = {
        "deps": attr.label(cfg = platform_transition),
        "transition_to_platform": attr.string(),
        "_allowlist_function_transition": attr.label(
            default = "@bazel_tools//tools/allowlists/function_transition_allowlist",
        ),
    },
)
