# Makefile

# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -Wall

# Targets
TARGET = hello-world

# Source files
SRC = main.cpp hello-world.cpp

# Object files
OBJ = main.o hello-world.o

# Build the target executable
$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJ)

# Compile source files into object files
main.o: main.cpp hello-world.h
	$(CXX) $(CXXFLAGS) -c main.cpp

hello.o: hello-world.cpp hello-world.h
	$(CXX) $(CXXFLAGS) -c hello-world.cpp

# Clean up the build artifacts
clean:
	rm -f $(OBJ) $(TARGET)
