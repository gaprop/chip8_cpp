# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/anders/.local/src/C++/chip8

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anders/.local/src/C++/chip8/build

# Include any dependencies generated for this target.
include dependencies/minifb/CMakeFiles/input_events_cpp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dependencies/minifb/CMakeFiles/input_events_cpp.dir/compiler_depend.make

# Include the progress variables for this target.
include dependencies/minifb/CMakeFiles/input_events_cpp.dir/progress.make

# Include the compile flags for this target's objects.
include dependencies/minifb/CMakeFiles/input_events_cpp.dir/flags.make

dependencies/minifb/CMakeFiles/input_events_cpp.dir/tests/input_events_cpp.cpp.o: dependencies/minifb/CMakeFiles/input_events_cpp.dir/flags.make
dependencies/minifb/CMakeFiles/input_events_cpp.dir/tests/input_events_cpp.cpp.o: /home/anders/.local/src/C++/chip8/dependencies/minifb/tests/input_events_cpp.cpp
dependencies/minifb/CMakeFiles/input_events_cpp.dir/tests/input_events_cpp.cpp.o: dependencies/minifb/CMakeFiles/input_events_cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anders/.local/src/C++/chip8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dependencies/minifb/CMakeFiles/input_events_cpp.dir/tests/input_events_cpp.cpp.o"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT dependencies/minifb/CMakeFiles/input_events_cpp.dir/tests/input_events_cpp.cpp.o -MF CMakeFiles/input_events_cpp.dir/tests/input_events_cpp.cpp.o.d -o CMakeFiles/input_events_cpp.dir/tests/input_events_cpp.cpp.o -c /home/anders/.local/src/C++/chip8/dependencies/minifb/tests/input_events_cpp.cpp

dependencies/minifb/CMakeFiles/input_events_cpp.dir/tests/input_events_cpp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/input_events_cpp.dir/tests/input_events_cpp.cpp.i"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anders/.local/src/C++/chip8/dependencies/minifb/tests/input_events_cpp.cpp > CMakeFiles/input_events_cpp.dir/tests/input_events_cpp.cpp.i

dependencies/minifb/CMakeFiles/input_events_cpp.dir/tests/input_events_cpp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/input_events_cpp.dir/tests/input_events_cpp.cpp.s"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anders/.local/src/C++/chip8/dependencies/minifb/tests/input_events_cpp.cpp -o CMakeFiles/input_events_cpp.dir/tests/input_events_cpp.cpp.s

# Object files for target input_events_cpp
input_events_cpp_OBJECTS = \
"CMakeFiles/input_events_cpp.dir/tests/input_events_cpp.cpp.o"

# External object files for target input_events_cpp
input_events_cpp_EXTERNAL_OBJECTS =

dependencies/minifb/input_events_cpp: dependencies/minifb/CMakeFiles/input_events_cpp.dir/tests/input_events_cpp.cpp.o
dependencies/minifb/input_events_cpp: dependencies/minifb/CMakeFiles/input_events_cpp.dir/build.make
dependencies/minifb/input_events_cpp: dependencies/minifb/libminifb.a
dependencies/minifb/input_events_cpp: dependencies/minifb/CMakeFiles/input_events_cpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anders/.local/src/C++/chip8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable input_events_cpp"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/input_events_cpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependencies/minifb/CMakeFiles/input_events_cpp.dir/build: dependencies/minifb/input_events_cpp
.PHONY : dependencies/minifb/CMakeFiles/input_events_cpp.dir/build

dependencies/minifb/CMakeFiles/input_events_cpp.dir/clean:
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && $(CMAKE_COMMAND) -P CMakeFiles/input_events_cpp.dir/cmake_clean.cmake
.PHONY : dependencies/minifb/CMakeFiles/input_events_cpp.dir/clean

dependencies/minifb/CMakeFiles/input_events_cpp.dir/depend:
	cd /home/anders/.local/src/C++/chip8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anders/.local/src/C++/chip8 /home/anders/.local/src/C++/chip8/dependencies/minifb /home/anders/.local/src/C++/chip8/build /home/anders/.local/src/C++/chip8/build/dependencies/minifb /home/anders/.local/src/C++/chip8/build/dependencies/minifb/CMakeFiles/input_events_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dependencies/minifb/CMakeFiles/input_events_cpp.dir/depend

