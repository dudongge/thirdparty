cc_library(
    name = "gtest",
    prebuilt=True,
    incs = [
      './build/include',
    ],
    deps = [
        "//thirdparty/glog:glog",
        "//thirdparty/gflags:gflags",
        '#pthread',
    ],
    warning = 'no'
)

cc_library(
    name = "gtest_main",
    prebuilt=True,
    incs = [
      './build/include',
    ],
    deps = [
        ":gtest",
        "//thirdparty/glog:glog",
        "//thirdparty/gflags:gflags"
    ],
    warning = 'no'
)

cc_library(
    name = "gmock",
    prebuilt=True,
    incs = [
      './build/include',
    ],
    deps = [
        "//thirdparty/glog:glog",
        "//thirdparty/gflags:gflags",
        '#pthread',
    ],
    warning = 'no'
)

cc_library(
    name = "gmock_main",
    prebuilt=True,
    incs = [
      './build/include',
    ],
    deps = [
        ":gmock",
        "//thirdparty/glog:glog",
        "//thirdparty/gflags:gflags"
    ],
    warning = 'no'
)

