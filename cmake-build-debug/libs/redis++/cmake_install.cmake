# Install script for directory: /Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/cmake-build-debug/libs/redis++/libredis++.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libredis++.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libredis++.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libredis++.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/cmake-build-debug/libs/redis++/libredis++.1.3.15.dylib"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/cmake-build-debug/libs/redis++/libredis++.1.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libredis++.1.3.15.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libredis++.1.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/usr/local/lib"
        "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/cmake-build-debug/libs/redis++/libredis++.dylib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/redis++/redis++-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/redis++/redis++-targets.cmake"
         "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/cmake-build-debug/libs/redis++/CMakeFiles/Export/7d81f1912f64acc9d7f7c51a1b3ceb40/redis++-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/redis++/redis++-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/redis++/redis++-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/redis++" TYPE FILE FILES "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/cmake-build-debug/libs/redis++/CMakeFiles/Export/7d81f1912f64acc9d7f7c51a1b3ceb40/redis++-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/redis++" TYPE FILE FILES "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/cmake-build-debug/libs/redis++/CMakeFiles/Export/7d81f1912f64acc9d7f7c51a1b3ceb40/redis++-targets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sw/redis++" TYPE FILE FILES
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/cmake-build-debug/libs/redis++/src/sw/redis++/hiredis_features.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/cmd_formatter.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/command.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/command_args.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/command_options.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/connection.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/connection_pool.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/cxx17/sw/redis++/cxx_utils.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/errors.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/no_tls/sw/redis++/tls.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/pipeline.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/queued_redis.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/queued_redis.hpp"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/redis++.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/redis.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/redis.hpp"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/redis_cluster.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/redis_cluster.hpp"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/redis_uri.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/reply.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/sentinel.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/shards.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/shards_pool.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/subscriber.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/transaction.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/utils.h"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/version.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sw/redis++/patterns" TYPE FILE FILES "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/libs/redis++/src/sw/redis++/patterns/redlock.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/redis++" TYPE FILE FILES
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/cmake-build-debug/libs/redis++/cmake/redis++-config.cmake"
    "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/cmake-build-debug/libs/redis++/cmake/redis++-config-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/cmake-build-debug/libs/redis++/cmake/redis++.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/sahibkazimli/own-your-flow/OWN-YOUR-FLOW/cmake-build-debug/libs/redis++/test/cmake_install.cmake")

endif()

