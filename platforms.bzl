def define_platforms():
    native.constraint_value(
        name = "cpu_1",
        constraint_setting = "@platforms//cpu",
    )

    native.platform(
        name = "platform_1",
        constraint_values = [
            "cpu_1",
        ],
    )

    native.constraint_value(
        name = "cpu_2",
        constraint_setting = "@platforms//cpu",
    )

    native.platform(
        name = "platform_2",
        constraint_values = [
            "cpu_2",
        ],
    )