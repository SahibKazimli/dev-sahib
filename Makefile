CXX = g++
CXXFLAGS = -std=c++17 -O2 -Wall -Wextra
INCLUDES = -I. -I./src
LIBS = -lyaml-cpp -lfmt -lpthread
SOURCES = src/main.cpp src/cot.cpp src/parser.cpp src/filler.cpp

server: $(SOURCES)
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(SOURCES) $(LIBS) -o server

clean:
	rm -f server 