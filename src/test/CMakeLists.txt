project(tests LANGUAGES CXX)

enable_testing()

include(GoogleTest)
find_package(GTest CONFIG REQUIRED)

add_executable(tests
    test_ut_corelib.cpp
    )

target_link_libraries(tests PRIVATE
    corelib
    GTest::gmock
    GTest::gtest
    GTest::gmock_main
    GTest::gtest_main
    )

gtest_discover_tests(src/test)
