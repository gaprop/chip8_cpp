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
include dependencies/minifb/CMakeFiles/input_events.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dependencies/minifb/CMakeFiles/input_events.dir/compiler_depend.make

# Include the progress variables for this target.
include dependencies/minifb/CMakeFiles/input_events.dir/progress.make

# Include the compile flags for this target's objects.
include dependencies/minifb/CMakeFiles/input_events.dir/flags.make

dependencies/minifb/CMakeFiles/input_events.dir/tests/input_events.c.o: dependencies/minifb/CMakeFiles/input_events.dir/flags.make
dependencies/minifb/CMakeFiles/input_events.dir/tests/input_events.c.o: /home/anders/.local/src/C++/chip8/dependencies/minifb/tests/input_events.c
dependencies/minifb/CMakeFiles/input_events.dir/tests/input_events.c.o: dependencies/minifb/CMakeFiles/input_events.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anders/.local/src/C++/chip8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dependencies/minifb/CMakeFiles/input_events.dir/tests/input_events.c.o"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/minifb/CMakeFiles/input_events.dir/tests/input_events.c.o -MF CMakeFiles/input_events.dir/tests/input_events.c.o.d -o CMakeFiles/input_events.dir/tests/input_events.c.o -c /home/anders/.local/src/C++/chip8/dependencies/minifb/tests/input_events.c

dependencies/minifb/CMakeFiles/input_events.dir/tests/input_events.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/input_events.dir/tests/input_events.c.i"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anders/.local/src/C++/chip8/dependencies/minifb/tests/input_events.c > CMakeFiles/input_events.dir/tests/input_events.c.i

dependencies/minifb/CMakeFiles/input_events.dir/tests/input_events.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/input_events.dir/tests/input_events.c.s"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anders/.local/src/C++/chip8/dependencies/minifb/tests/input_events.c -o CMakeFiles/input_events.dir/tests/input_events.c.s

# Object files for target input_events
input_events_OBJECTS = \
"CMakeFiles/input_events.dir/tests/input_events.c.o"

# External object files for target input_events
input_events_EXTERNAL_OBJECTS =

dependencies/minifb/input_events: dependencies/minifb/CMakeFiles/input_events.dir/tests/input_events.c.o
dependencies/minifb/input_events: dependencies/minifb/CMakeFiles/input_events.dir/build.make
dependencies/minifb/input_events: dependencies/minifb/libminifb.a
dependencies/minifb/input_events: dependencies/minifb/CMakeFiles/input_events.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anders/.local/src/C++/chip8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable input_events"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/input_events.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependencies/minifb/CMakeFiles/input_events.dir/build: dependencies/minifb/input_events
.PHONY : dependencies/minifb/CMakeFiles/input_events.dir/build

dependencies/minifb/CMakeFiles/input_events.dir/clean:
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && $(CMAKE_COMMAND) -P CMakeFiles/input_events.dir/cmake_clean.cmake
.PHONY : dependencies/minifb/CMakeFiles/input_events.dir/clean

dependencies/minifb/CMakeFiles/input_events.dir/depend:
	cd /home/anders/.local/src/C++/chip8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anders/.local/src/C++/chip8 /home/anders/.local/src/C++/chip8/dependencies/minifb /home/anders/.local/src/C++/chip8/build /home/anders/.local/src/C++/chip8/build/dependencies/minifb /home/anders/.local/src/C++/chip8/build/dependencies/minifb/CMakeFiles/input_events.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dependencies/minifb/CMakeFiles/input_events.dir/depend

