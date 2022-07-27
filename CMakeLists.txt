cmake_minimum_required(VERSION 3.22)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(cmake/vcpkg.cmake)

set(CMAKE_CXX_CLANG_TIDY clang-tidy)

include_directories(src/inc)

project(sampleproj
  VERSION 0.0.1
  DESCRIPTION "cpp cmake vso xplatform integrated sample project"
  LANGUAGES CXX
)

add_subdirectory(src)
