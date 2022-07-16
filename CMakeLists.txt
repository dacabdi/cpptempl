cmake_minimum_required(VERSION 3.22)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(vcpkg.cmake)

set(CMAKE_CXX_CLANG_TIDY clang-tidy)

include_directories(src/inc)

project(sampleproj
  VERSION 0.0.1
  DESCRIPTION "cpp cmake vso xplatform integrated sample project"
  LANGUAGES CXX
)

add_library(core
  src/lib/core.cpp
)

add_executable(sample
  src/app/sample/main.cpp
)

target_link_libraries(sample core)

enable_testing()

include(GoogleTest)
find_package(GTest CONFIG REQUIRED)

add_executable(tests
  src/tests/ut_corelib.cpp
)

target_link_libraries(tests PRIVATE
  core
  GTest::gtest
  GTest::gtest_main
)

gtest_discover_tests(tests)
