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
include dependencies/minifb/CMakeFiles/minifb.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dependencies/minifb/CMakeFiles/minifb.dir/compiler_depend.make

# Include the progress variables for this target.
include dependencies/minifb/CMakeFiles/minifb.dir/progress.make

# Include the compile flags for this target's objects.
include dependencies/minifb/CMakeFiles/minifb.dir/flags.make

dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_common.c.o: dependencies/minifb/CMakeFiles/minifb.dir/flags.make
dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_common.c.o: /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_common.c
dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_common.c.o: dependencies/minifb/CMakeFiles/minifb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anders/.local/src/C++/chip8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_common.c.o"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_common.c.o -MF CMakeFiles/minifb.dir/src/MiniFB_common.c.o.d -o CMakeFiles/minifb.dir/src/MiniFB_common.c.o -c /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_common.c

dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minifb.dir/src/MiniFB_common.c.i"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_common.c > CMakeFiles/minifb.dir/src/MiniFB_common.c.i

dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minifb.dir/src/MiniFB_common.c.s"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_common.c -o CMakeFiles/minifb.dir/src/MiniFB_common.c.s

dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_cpp.cpp.o: dependencies/minifb/CMakeFiles/minifb.dir/flags.make
dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_cpp.cpp.o: /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_cpp.cpp
dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_cpp.cpp.o: dependencies/minifb/CMakeFiles/minifb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anders/.local/src/C++/chip8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_cpp.cpp.o"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_cpp.cpp.o -MF CMakeFiles/minifb.dir/src/MiniFB_cpp.cpp.o.d -o CMakeFiles/minifb.dir/src/MiniFB_cpp.cpp.o -c /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_cpp.cpp

dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_cpp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/minifb.dir/src/MiniFB_cpp.cpp.i"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_cpp.cpp > CMakeFiles/minifb.dir/src/MiniFB_cpp.cpp.i

dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_cpp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/minifb.dir/src/MiniFB_cpp.cpp.s"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_cpp.cpp -o CMakeFiles/minifb.dir/src/MiniFB_cpp.cpp.s

dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_internal.c.o: dependencies/minifb/CMakeFiles/minifb.dir/flags.make
dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_internal.c.o: /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_internal.c
dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_internal.c.o: dependencies/minifb/CMakeFiles/minifb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anders/.local/src/C++/chip8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_internal.c.o"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_internal.c.o -MF CMakeFiles/minifb.dir/src/MiniFB_internal.c.o.d -o CMakeFiles/minifb.dir/src/MiniFB_internal.c.o -c /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_internal.c

dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_internal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minifb.dir/src/MiniFB_internal.c.i"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_internal.c > CMakeFiles/minifb.dir/src/MiniFB_internal.c.i

dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_internal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minifb.dir/src/MiniFB_internal.c.s"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_internal.c -o CMakeFiles/minifb.dir/src/MiniFB_internal.c.s

dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_timer.c.o: dependencies/minifb/CMakeFiles/minifb.dir/flags.make
dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_timer.c.o: /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_timer.c
dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_timer.c.o: dependencies/minifb/CMakeFiles/minifb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anders/.local/src/C++/chip8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_timer.c.o"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_timer.c.o -MF CMakeFiles/minifb.dir/src/MiniFB_timer.c.o.d -o CMakeFiles/minifb.dir/src/MiniFB_timer.c.o -c /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_timer.c

dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_timer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minifb.dir/src/MiniFB_timer.c.i"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_timer.c > CMakeFiles/minifb.dir/src/MiniFB_timer.c.i

dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_timer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minifb.dir/src/MiniFB_timer.c.s"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_timer.c -o CMakeFiles/minifb.dir/src/MiniFB_timer.c.s

dependencies/minifb/CMakeFiles/minifb.dir/src/gl/MiniFB_GL.c.o: dependencies/minifb/CMakeFiles/minifb.dir/flags.make
dependencies/minifb/CMakeFiles/minifb.dir/src/gl/MiniFB_GL.c.o: /home/anders/.local/src/C++/chip8/dependencies/minifb/src/gl/MiniFB_GL.c
dependencies/minifb/CMakeFiles/minifb.dir/src/gl/MiniFB_GL.c.o: dependencies/minifb/CMakeFiles/minifb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anders/.local/src/C++/chip8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object dependencies/minifb/CMakeFiles/minifb.dir/src/gl/MiniFB_GL.c.o"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/minifb/CMakeFiles/minifb.dir/src/gl/MiniFB_GL.c.o -MF CMakeFiles/minifb.dir/src/gl/MiniFB_GL.c.o.d -o CMakeFiles/minifb.dir/src/gl/MiniFB_GL.c.o -c /home/anders/.local/src/C++/chip8/dependencies/minifb/src/gl/MiniFB_GL.c

dependencies/minifb/CMakeFiles/minifb.dir/src/gl/MiniFB_GL.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minifb.dir/src/gl/MiniFB_GL.c.i"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anders/.local/src/C++/chip8/dependencies/minifb/src/gl/MiniFB_GL.c > CMakeFiles/minifb.dir/src/gl/MiniFB_GL.c.i

dependencies/minifb/CMakeFiles/minifb.dir/src/gl/MiniFB_GL.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minifb.dir/src/gl/MiniFB_GL.c.s"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anders/.local/src/C++/chip8/dependencies/minifb/src/gl/MiniFB_GL.c -o CMakeFiles/minifb.dir/src/gl/MiniFB_GL.c.s

dependencies/minifb/CMakeFiles/minifb.dir/src/x11/X11MiniFB.c.o: dependencies/minifb/CMakeFiles/minifb.dir/flags.make
dependencies/minifb/CMakeFiles/minifb.dir/src/x11/X11MiniFB.c.o: /home/anders/.local/src/C++/chip8/dependencies/minifb/src/x11/X11MiniFB.c
dependencies/minifb/CMakeFiles/minifb.dir/src/x11/X11MiniFB.c.o: dependencies/minifb/CMakeFiles/minifb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anders/.local/src/C++/chip8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object dependencies/minifb/CMakeFiles/minifb.dir/src/x11/X11MiniFB.c.o"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/minifb/CMakeFiles/minifb.dir/src/x11/X11MiniFB.c.o -MF CMakeFiles/minifb.dir/src/x11/X11MiniFB.c.o.d -o CMakeFiles/minifb.dir/src/x11/X11MiniFB.c.o -c /home/anders/.local/src/C++/chip8/dependencies/minifb/src/x11/X11MiniFB.c

dependencies/minifb/CMakeFiles/minifb.dir/src/x11/X11MiniFB.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minifb.dir/src/x11/X11MiniFB.c.i"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anders/.local/src/C++/chip8/dependencies/minifb/src/x11/X11MiniFB.c > CMakeFiles/minifb.dir/src/x11/X11MiniFB.c.i

dependencies/minifb/CMakeFiles/minifb.dir/src/x11/X11MiniFB.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minifb.dir/src/x11/X11MiniFB.c.s"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anders/.local/src/C++/chip8/dependencies/minifb/src/x11/X11MiniFB.c -o CMakeFiles/minifb.dir/src/x11/X11MiniFB.c.s

dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_linux.c.o: dependencies/minifb/CMakeFiles/minifb.dir/flags.make
dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_linux.c.o: /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_linux.c
dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_linux.c.o: dependencies/minifb/CMakeFiles/minifb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anders/.local/src/C++/chip8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_linux.c.o"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_linux.c.o -MF CMakeFiles/minifb.dir/src/MiniFB_linux.c.o.d -o CMakeFiles/minifb.dir/src/MiniFB_linux.c.o -c /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_linux.c

dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_linux.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minifb.dir/src/MiniFB_linux.c.i"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_linux.c > CMakeFiles/minifb.dir/src/MiniFB_linux.c.i

dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_linux.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minifb.dir/src/MiniFB_linux.c.s"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anders/.local/src/C++/chip8/dependencies/minifb/src/MiniFB_linux.c -o CMakeFiles/minifb.dir/src/MiniFB_linux.c.s

# Object files for target minifb
minifb_OBJECTS = \
"CMakeFiles/minifb.dir/src/MiniFB_common.c.o" \
"CMakeFiles/minifb.dir/src/MiniFB_cpp.cpp.o" \
"CMakeFiles/minifb.dir/src/MiniFB_internal.c.o" \
"CMakeFiles/minifb.dir/src/MiniFB_timer.c.o" \
"CMakeFiles/minifb.dir/src/gl/MiniFB_GL.c.o" \
"CMakeFiles/minifb.dir/src/x11/X11MiniFB.c.o" \
"CMakeFiles/minifb.dir/src/MiniFB_linux.c.o"

# External object files for target minifb
minifb_EXTERNAL_OBJECTS =

dependencies/minifb/libminifb.a: dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_common.c.o
dependencies/minifb/libminifb.a: dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_cpp.cpp.o
dependencies/minifb/libminifb.a: dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_internal.c.o
dependencies/minifb/libminifb.a: dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_timer.c.o
dependencies/minifb/libminifb.a: dependencies/minifb/CMakeFiles/minifb.dir/src/gl/MiniFB_GL.c.o
dependencies/minifb/libminifb.a: dependencies/minifb/CMakeFiles/minifb.dir/src/x11/X11MiniFB.c.o
dependencies/minifb/libminifb.a: dependencies/minifb/CMakeFiles/minifb.dir/src/MiniFB_linux.c.o
dependencies/minifb/libminifb.a: dependencies/minifb/CMakeFiles/minifb.dir/build.make
dependencies/minifb/libminifb.a: dependencies/minifb/CMakeFiles/minifb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anders/.local/src/C++/chip8/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library libminifb.a"
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && $(CMAKE_COMMAND) -P CMakeFiles/minifb.dir/cmake_clean_target.cmake
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/minifb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependencies/minifb/CMakeFiles/minifb.dir/build: dependencies/minifb/libminifb.a
.PHONY : dependencies/minifb/CMakeFiles/minifb.dir/build

dependencies/minifb/CMakeFiles/minifb.dir/clean:
	cd /home/anders/.local/src/C++/chip8/build/dependencies/minifb && $(CMAKE_COMMAND) -P CMakeFiles/minifb.dir/cmake_clean.cmake
.PHONY : dependencies/minifb/CMakeFiles/minifb.dir/clean

dependencies/minifb/CMakeFiles/minifb.dir/depend:
	cd /home/anders/.local/src/C++/chip8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anders/.local/src/C++/chip8 /home/anders/.local/src/C++/chip8/dependencies/minifb /home/anders/.local/src/C++/chip8/build /home/anders/.local/src/C++/chip8/build/dependencies/minifb /home/anders/.local/src/C++/chip8/build/dependencies/minifb/CMakeFiles/minifb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dependencies/minifb/CMakeFiles/minifb.dir/depend
