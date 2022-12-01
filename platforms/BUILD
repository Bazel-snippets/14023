package(default_visibility = ["//visibility:public"])

constraint_setting(name = "cpu")

constraint_value(
    name = "cpu_1",
    constraint_setting = "cpu",
)

platform(
    name = "platform_1",
    constraint_values = ["cpu_1"],
)

constraint_value(
    name = "cpu_2",
    constraint_setting = "cpu",
)

platform(
    name = "platform_2",
    constraint_values = ["cpu_2"],
)
