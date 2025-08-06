cmake_minimum_required(VERSION 3.16)
project(cpp_server)

set(CMAKE_CXX_STANDARD 17)

# Point to Homebrew installation
set(CMAKE_PREFIX_PATH "${CMAKE_PREFIX_PATH} /opt/homebrew/opt/fmt")

# Find required packages
find_package(yaml-cpp REQUIRED)
find_package(fmt REQUIRED)
find_package(redis++ REQUIRED)

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
)

# Link libraries
target_link_libraries(server 
    yaml-cpp::yaml-cpp 
    fmt::fmt 
    llama 
    pthread
    redis++::redis++static
    curl
) 