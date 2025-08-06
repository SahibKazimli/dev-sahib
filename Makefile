CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra $(shell pkg-config --cflags hiredis)
LIBS = $(shell pkg-config --libs hiredis) -lcurl -lyaml-cpp -lfmt -lpthread
INCLUDES = -I. -I./src

# Directories
SRC_DIR = src
BUILD_DIR = build
DB_DIR = $(SRC_DIR)/db
TOOLS_DIR = $(SRC_DIR)/tools

# Source files (only existing ones)
MAIN_SRC = $(SRC_DIR)/main.cpp
COT_SRC = $(SRC_DIR)/cot.cpp
PARSER_SRC = $(SRC_DIR)/parser.cpp
FILLER_SRC = $(SRC_DIR)/filler.cpp

# Object files (in build directory)
MAIN_OBJ = $(BUILD_DIR)/main.o
COT_OBJ = $(BUILD_DIR)/cot.o
PARSER_OBJ = $(BUILD_DIR)/parser.o
FILLER_OBJ = $(BUILD_DIR)/filler.o

# Target executable
TARGET = server

# Default target
all: $(BUILD_DIR) $(TARGET)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(TARGET): $(MAIN_OBJ) $(COT_OBJ) $(PARSER_OBJ) $(FILLER_OBJ)
	$(CXX) $(CXXFLAGS) $(INCLUDES) -o $@ $^ $(LIBS)

# Compile rules
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

# Database setup
setup-db:
	cd $(DB_DIR) && docker-compose up -d

# Clean
clean:
	rm -rf $(BUILD_DIR) $(TARGET)

.PHONY: all clean setup-db 