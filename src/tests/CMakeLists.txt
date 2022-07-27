enable_testing()

include(GoogleTest)

find_package(GTest CONFIG REQUIRED)

add_executable(tests
  ut_corelib.cpp
)

target_link_libraries(tests PRIVATE
  core
  GTest::gtest
  GTest::gtest_main
)

gtest_discover_tests(tests)
