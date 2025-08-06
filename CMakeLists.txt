cmake_minimum_required(VERSION 3.16)
project(cpp_server)

set(CMAKE_CXX_STANDARD 17)

# Find required packages
find_package(yaml-cpp REQUIRED)
find_package(fmt REQUIRED)

# Try to find redis++ system-wide first, fallback to local build
find_package(redis++ QUIET)
if(NOT redis++_FOUND)
    # Check if local build exists
    if(EXISTS "${CMAKE_SOURCE_DIR}/libs/redis-plus-plus/build/libredis++.a")
        set(REDIS_PLUS_PLUS_LIB "${CMAKE_SOURCE_DIR}/libs/redis-plus-plus/build/libredis++.a")
        set(REDIS_PLUS_PLUS_INCLUDE "${CMAKE_SOURCE_DIR}/libs/redis-plus-plus/src")
        message(STATUS "Using local redis-plus-plus build")
    else()
        message(FATAL_ERROR "redis++ not found. Please install it system-wide or build locally in libs/redis-plus-plus/")
    endif()
else()
    set(REDIS_PLUS_PLUS_LIB redis++::redis++static)
    message(STATUS "Using system redis++")
endif()

# Add llama.cpp subdirectory
add_subdirectory(libs/llama.cpp)

# Add Crow (header-only library)
include_directories(include)

# Add executable
add_executable(server 
    src/main.cpp
    src/cot.cpp
    src/parser.cpp
    src/filler.cpp
)

# Include directories
target_include_directories(server PRIVATE 
    . 
    src 
    libs/llama.cpp
    ${REDIS_PLUS_PLUS_INCLUDE}
    libs/hiredis
)

# Link libraries
target_link_libraries(server 
    yaml-cpp::yaml-cpp 
    fmt::fmt 
    llama 
    pthread
    ${REDIS_PLUS_PLUS_LIB}
    hiredis
    curl
) 