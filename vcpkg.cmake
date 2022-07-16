# VCPKG_ROOT
if(DEFINED ENV{VCPKG_ROOT})
  message("VCPKG_ROOT overriden in environment")
  set(VCPKG_ROOT $ENV{VCPKG_ROOT})
endif()

if(NOT DEFINED VCPKG_ROOT)
  message("VCPKG_ROOT not set, using default")
  set(VCPKG_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/env/vcpkg)
endif()

message("VCPKG_ROOT='${VCPKG_ROOT}'")

# toolchain path and boostrapping
set(VCPKG_TOOLCHAIN_PATH "${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake")

if(NOT EXISTS ${VCPKG_TOOLCHAIN_PATH})
  message("vcpkg not found, cloning vcpkg into '${VCPKG_ROOT}'")
  execute_process(COMMAND git clone https://github.com/Microsoft/vcpkg.git ${VCPKG_ROOT}
    COMMAND_ERROR_IS_FATAL ANY
  )
endif()

set(CMAKE_TOOLCHAIN_FILE ${VCPKG_TOOLCHAIN_PATH}
  CACHE STRING "vcpkg toolchain file"
)

if(DEFINED ENV{VCPKG_DEFAULT_TRIPLET} AND NOT DEFINED VCPKG_TARGET_TRIPLET)
  set(VCPKG_TARGET_TRIPLET "$ENV{VCPKG_DEFAULT_TRIPLET}" CACHE STRING "")
endif()
