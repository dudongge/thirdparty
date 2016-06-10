cc_library(
    name = "gtest",
    srcs = [
        "googletest/googletest/src/gtest.cc",
        "googletest/googletest/src/gtest-death-test.cc",
        "googletest/googletest/src/gtest-filepath.cc",
        "googletest/googletest/src/gtest-printers.cc",
        "googletest/googletest/src/gtest-port.cc",
        "googletest/googletest/src/gtest-test-part.cc",
        "googletest/googletest/src/gtest-typed-test.cc",
    ],
    incs = [
      './googletest/googletest/include',
      './googletest/googletest',
    ],
    deps = '#pthread',
    warning = 'no'
)

cc_library(
    name = "gtest_main",
    srcs = [
        "googletest/googletest/src/gtest_main.cc",
    ],
    incs = [
      './googletest/googletest/include',
      './googletest/googletest',
    ],
    deps = [
        ":gtest",
        "//thirdparty/glog:glog",
        "//thirdparty/gflags:gflags"
    ],
    warning = 'no'
)
