cmake_minimum_required(VERSION 3.22)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(.config/vcpkg.cmake)

# uses .clang-tidy file implicitly
# temporarily disable clang-tidy due to: https://gitlab.kitware.com/cmake/cmake/-/issues/20512
set(CMAKE_CXX_CLANG_TIDY clang-tidy)

include_directories(src/inc)

project (sampleproj
	VERSION 0.0.1
	DESCRIPTION "cpp cmake vso xplatform integrated sample project"
	LANGUAGES CXX
	)

add_library (corelib
	src/lib/core.cpp
	)

add_executable (sample
	src/app/sample/main.cpp
	)

target_link_libraries (sample corelib)

enable_testing()
#add_subdirectory(src/test)
