cc_library(
    name = 'gflags',
    srcs = [
      'gflags/src/gflags.cc',
      'gflags/src/gflags_reporting.cc',
      'gflags/src/gflags_completions.cc',
    ],
    incs = './gflags/src',
    deps = '#pthread',
    warning = 'no'
)

cc_test(
    name = 'gflags_test',
    srcs = 'gflags_test.cpp',
    deps = ':gflags'
)
