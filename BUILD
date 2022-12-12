load("sample_rule.bzl", "sample_rule")
load("transitioner.bzl", "transitioner_rule")

package(default_visibility = ["//visibility:public"])

# =====================================================
sample_rule(
    name = "target_1",
)

# =====================================================
sample_rule(
    name = "target_2",
)
transitioner_rule(
    name = "target_2_to_platform_2",
    deps = "target_2",
    transition_to_platform = "//platforms:platform_2"
)

# =====================================================
sample_rule(
    name = "target_3",
)

transitioner_rule(
    name = "target_3_to_platform_1",
    deps = "target_3",
    transition_to_platform = "//platforms:platform_1",
)

transitioner_rule(
    name = "target_3_back_to_platform_1",
    deps = "target_3_to_platform_1",
    transition_to_platform = "//platforms:platform_2",
)
# =====================================================

filegroup(
    name = "demo",
    srcs = [
        "target_1",
        "target_2_to_platform_2",
        "target_3_back_to_platform_1",
    ],
)