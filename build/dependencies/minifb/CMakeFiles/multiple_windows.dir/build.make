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
include dependencies/minifb/CMakeFiles/multiple_windows.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dependencies/minifb/CMakeFiles/multiple_windows.dir/compiler_depend.make

# Include the progress variables for this target.
include dependencies/minifb/CMakeFiles/multiple_windows.dir/progress.make

# Include the compile flags for this target's objects.
include dependencies/minifb/CMakeFiles/multiple_windows.dir/flags.make

dependencies/minifb/CMakeFiles/multiple_windows.dir/tests/multiple_windows.c.o: dependencies/minifb/CMakeFiles/multiple_windows.dir/flags.make
dependencies/minifb/CMakeFiles/multiple_windows.dir/tests/multiple_windows.c.o: /home/anders/.local/src/C++/chip8/dependencies/minifb/tests/multiple_windows.c
dependencies/minifb/CMakeFiles/multiple_windows.dir/tests/multiple_windows.c.o: dependencies/minifb/CMakeFiles/multiple_windows.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anders/.local/src/C++/chip8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dependencies/minifb/CMakeFiles/multiple_windows.dir/tests/multiple_windows.c.o"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/minifb/CMakeFiles/multiple_windows.dir/tests/multiple_windows.c.o -MF CMakeFiles/multiple_windows.dir/tests/multiple_windows.c.o.d -o CMakeFiles/multiple_windows.dir/tests/multiple_windows.c.o -c /home/anders/.local/src/C++/chip8/dependencies/minifb/tests/multiple_windows.c

dependencies/minifb/CMakeFiles/multiple_windows.dir/tests/multiple_windows.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/multiple_windows.dir/tests/multiple_windows.c.i"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anders/.local/src/C++/chip8/dependencies/minifb/tests/multiple_windows.c > CMakeFiles/multiple_windows.dir/tests/multiple_windows.c.i

dependencies/minifb/CMakeFiles/multiple_windows.dir/tests/multiple_windows.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/multiple_windows.dir/tests/multiple_windows.c.s"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anders/.local/src/C++/chip8/dependencies/minifb/tests/multiple_windows.c -o CMakeFiles/multiple_windows.dir/tests/multiple_windows.c.s

# Object files for target multiple_windows
multiple_windows_OBJECTS = \
"CMakeFiles/multiple_windows.dir/tests/multiple_windows.c.o"

# External object files for target multiple_windows
multiple_windows_EXTERNAL_OBJECTS =

dependencies/minifb/multiple_windows: dependencies/minifb/CMakeFiles/multiple_windows.dir/tests/multiple_windows.c.o
dependencies/minifb/multiple_windows: dependencies/minifb/CMakeFiles/multiple_windows.dir/build.make
dependencies/minifb/multiple_windows: dependencies/minifb/libminifb.a
dependencies/minifb/multiple_windows: dependencies/minifb/CMakeFiles/multiple_windows.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anders/.local/src/C++/chip8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable multiple_windows"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/multiple_windows.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependencies/minifb/CMakeFiles/multiple_windows.dir/build: dependencies/minifb/multiple_windows
.PHONY : dependencies/minifb/CMakeFiles/multiple_windows.dir/build

dependencies/minifb/CMakeFiles/multiple_windows.dir/clean:
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && $(CMAKE_COMMAND) -P CMakeFiles/multiple_windows.dir/cmake_clean.cmake
.PHONY : dependencies/minifb/CMakeFiles/multiple_windows.dir/clean

dependencies/minifb/CMakeFiles/multiple_windows.dir/depend:
	cd /home/anders/.local/src/C++/chip8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anders/.local/src/C++/chip8 /home/anders/.local/src/C++/chip8/dependencies/minifb /home/anders/.local/src/C++/chip8/build /home/anders/.local/src/C++/chip8/build/dependencies/minifb /home/anders/.local/src/C++/chip8/build/dependencies/minifb/CMakeFiles/multiple_windows.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dependencies/minifb/CMakeFiles/multiple_windows.dir/depend

