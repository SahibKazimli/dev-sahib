g++ -std=c++17 -O2 -Wall -Wextra -I. -I./src src/*.cpp -lyaml-cpp -lfmt -lpthread -o server

# -std=c++17: Uses C++17 standard
# -O2: Optimization level 2
# -Wall -Wextra: Enables warnings
# -I. -I./src: Include paths for headers
# src/*.cpp: Compiles all .cpp files in src directory
# -lyaml-cpp -lfmt -lpthread: Links required libraries
# -o server: Output executable name