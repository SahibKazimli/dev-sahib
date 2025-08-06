cmake_minimum_required(VERSION 3.16)
project(cpp_server)

set(CMAKE_CXX_STANDARD 17)

find_package(yaml-cpp REQUIRED)
find_package(fmt REQUIRED)

# Add both subdirectories
add_subdirectory(libs/llama.cpp)

# Add Crow (header-only library)
include_directories(include)

add_executable(server 
    src/main.cpp
    src/cot.cpp
    src/parser.cpp
    src/filler.cpp
)

target_include_directories(server PRIVATE . src libs/llama.cpp)
target_link_libraries(server yaml-cpp::yaml-cpp fmt::fmt instinct_cpp llama pthread) 