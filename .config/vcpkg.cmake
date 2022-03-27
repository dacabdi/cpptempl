if(NOT DEFINED ENV{VCPKG_ROOT})
    set(VCPKG_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/../.env/vcpkg)
endif()

if(NOT EXISTS ${VCPKG_ROOT})
    message("VCPkg not found, cloning vcpkg into '${VCPKG_ROOT}'")
    execute_process(COMMAND git clone https://github.com/Microsoft/vcpkg.git ${VCPKG_ROOT})
endif()

set(VCPKG_TOOLCHAIN_PATH "$ENV{VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake")

if(NOT EXISTS ${VCPKG_TOOLCHAIN_PATH})
    message(FATAL_ERROR "Failed to clone vcpkg sources, cannot find toolchain path")
endif()

if(DEFINED ENV{VCPKG_DEFAULT_TRIPLET} AND NOT DEFINED VCPKG_TARGET_TRIPLET)
  set(VCPKG_TARGET_TRIPLET "$ENV{VCPKG_DEFAULT_TRIPLET}" CACHE STRING "")
endif()

set(CMAKE_TOOLCHAIN_FILE "$ENV{VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake"
    CACHE STRING "vcpkg toolchain file")
