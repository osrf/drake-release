
# Generated by cps2cmake
# https://github.com/mwoehlke/pycps

if(CMAKE_MAJOR_VERSION LESS 3)
  message(FATAL_ERROR "CMake >= 3.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 3.0)
set(CMAKE_IMPORT_FILE_VERSION 1)

if(CMAKE_VERSION VERSION_LESS 3.9.0)
  # Imported from CMake 3.9.0
  macro(find_dependency dep)
    if (NOT ${dep}_FOUND)
      set(cmake_fd_quiet_arg)
      if(${CMAKE_FIND_PACKAGE_NAME}_FIND_QUIETLY)
        set(cmake_fd_quiet_arg QUIET)
      endif()
      set(cmake_fd_required_arg)
      if(${CMAKE_FIND_PACKAGE_NAME}_FIND_REQUIRED)
        set(cmake_fd_required_arg REQUIRED)
      endif()

      get_property(cmake_fd_alreadyTransitive GLOBAL PROPERTY
        _CMAKE_${dep}_TRANSITIVE_DEPENDENCY
      )

      find_package(${dep} ${ARGN}
        ${cmake_fd_quiet_arg}
        ${cmake_fd_required_arg}
      )

      if(NOT DEFINED cmake_fd_alreadyTransitive OR cmake_fd_alreadyTransitive)
        set_property(GLOBAL PROPERTY _CMAKE_${dep}_TRANSITIVE_DEPENDENCY TRUE)
      endif()

      if (NOT ${dep}_FOUND)
        set(${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE "${CMAKE_FIND_PACKAGE_NAME} could not be found because dependency ${dep} could not be found.")
        set(${CMAKE_FIND_PACKAGE_NAME}_FOUND False)
        return()
      endif()
      set(cmake_fd_required_arg)
      set(cmake_fd_quiet_arg)
      set(cmake_fd_exact_arg)
    endif()
  endmacro()
else()
  include(CMakeFindDependencyMacro)
endif()


get_filename_component(${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}" PATH)
get_filename_component(${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}" PATH)
get_filename_component(${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}" PATH)

if(${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX STREQUAL "/")
  set(${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX)
endif()

find_dependency(lcm CONFIG HINTS "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}/lib/cmake/lcm")
find_dependency(bot2-core-lcmtypes CONFIG HINTS "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}/lib/cmake/bot2-core-lcmtypes")
set(_expectedTargets robotlocomotion-lcmtypes::robotlocomotion-lcmtypes robotlocomotion-lcmtypes::robotlocomotion-lcmtypes-java robotlocomotion-lcmtypes::robotlocomotion-lcmtypes-cpp)

set(_targetsDefined)
set(_targetsNotDefined)

foreach(_expectedTarget ${_expectedTargets})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)

add_library(robotlocomotion-lcmtypes::robotlocomotion-lcmtypes SHARED IMPORTED)
set_target_properties(robotlocomotion-lcmtypes::robotlocomotion-lcmtypes PROPERTIES
  IMPORTED_LOCATION "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}/lib/liblcmtypes_robotlocomotion_c.so"
  INTERFACE_INCLUDE_DIRECTORIES "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}/include/lcmtypes"
  INTERFACE_LINK_LIBRARIES "bot2-core-lcmtypes::lcmtypes_bot2-core;lcm::lcm-coretypes"
)

add_library(robotlocomotion-lcmtypes::robotlocomotion-lcmtypes-java STATIC IMPORTED)
set_target_properties(robotlocomotion-lcmtypes::robotlocomotion-lcmtypes-java PROPERTIES
  IMPORTED_LOCATION "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}/share/java/lcmtypes_robotlocomotion.jar"
  JAR_FILE "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}/share/java/lcmtypes_robotlocomotion.jar"
)

add_library(robotlocomotion-lcmtypes::robotlocomotion-lcmtypes-cpp INTERFACE IMPORTED)
set_target_properties(robotlocomotion-lcmtypes::robotlocomotion-lcmtypes-cpp PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}/include/lcmtypes"
  INTERFACE_LINK_LIBRARIES "bot2-core-lcmtypes::lcmtypes_bot2-core-cpp;lcm::lcm-coretypes"
)

set(robotlocomotion-lcmtypes_LIBRARIES "robotlocomotion-lcmtypes::robotlocomotion-lcmtypes-cpp")
set(robotlocomotion-lcmtypes_INCLUDE_DIRS "")


unset(${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX)
unset(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)

