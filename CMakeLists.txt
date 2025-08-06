cmake_minimum_required(VERSION 3.16)
project(cpp_server)

set(CMAKE_CXX_STANDARD 17)

# Find dependencies
find_package(yaml-cpp REQUIRED)
find_package(fmt REQUIRED)

# Add instinct.cpp subdirectory
add_subdirectory(lib/instinct.cpp)

add_executable(server 
    src/main.cpp
    src/cot.cpp
    src/parser.cpp
    src/filler.cpp
)

target_include_directories(server PRIVATE . src lib/instinct.cpp/include)
target_link_libraries(server yaml-cpp::yaml-cpp fmt::fmt instinct_cpp pthread) 