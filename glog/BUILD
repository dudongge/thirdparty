cc_library(
    name = 'glog',
    srcs = [
      "glog/src/demangle.cc",
      "glog/src/logging.cc",
      "glog/src/raw_logging.cc",
      "glog/src/signalhandler.cc",
      "glog/src/symbolize.cc",
      "glog/src/utilities.cc",
      "glog/src/vlog_is_on.cc",
    ],
    incs = './glog/src',
    deps = [
      '#pthread',
      '//thirdparty/gflags:gflags'
    ],
    warning = 'no'

)

cc_test(
    name = 'glog_test',
    srcs = 'glog_test.cpp',
    deps = ':glog'
)
