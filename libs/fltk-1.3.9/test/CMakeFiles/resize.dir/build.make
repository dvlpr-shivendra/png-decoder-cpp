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
CMAKE_SOURCE_DIR = /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9

# Include any dependencies generated for this target.
include test/CMakeFiles/resize.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/resize.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/resize.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/resize.dir/flags.make

test/resize.cxx: test/resize.fl
test/resize.cxx: test/resize.fl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating resize.cxx, resize.h"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && ../bin/fluid -c /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/resize.fl

test/resize.h: test/resize.cxx
	@$(CMAKE_COMMAND) -E touch_nocreate test/resize.h

test/CMakeFiles/resize.dir/resize.cxx.o: test/CMakeFiles/resize.dir/flags.make
test/CMakeFiles/resize.dir/resize.cxx.o: test/resize.cxx
test/CMakeFiles/resize.dir/resize.cxx.o: test/CMakeFiles/resize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/resize.dir/resize.cxx.o"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/resize.dir/resize.cxx.o -MF CMakeFiles/resize.dir/resize.cxx.o.d -o CMakeFiles/resize.dir/resize.cxx.o -c /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/resize.cxx

test/CMakeFiles/resize.dir/resize.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/resize.dir/resize.cxx.i"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/resize.cxx > CMakeFiles/resize.dir/resize.cxx.i

test/CMakeFiles/resize.dir/resize.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/resize.dir/resize.cxx.s"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/resize.cxx -o CMakeFiles/resize.dir/resize.cxx.s

# Object files for target resize
resize_OBJECTS = \
"CMakeFiles/resize.dir/resize.cxx.o"

# External object files for target resize
resize_EXTERNAL_OBJECTS =

bin/test/resize: test/CMakeFiles/resize.dir/resize.cxx.o
bin/test/resize: test/CMakeFiles/resize.dir/build.make
bin/test/resize: lib/libfltk.a
bin/test/resize: /usr/lib/x86_64-linux-gnu/libdl.a
bin/test/resize: /usr/lib/x86_64-linux-gnu/libSM.so
bin/test/resize: /usr/lib/x86_64-linux-gnu/libICE.so
bin/test/resize: /usr/lib/x86_64-linux-gnu/libX11.so
bin/test/resize: /usr/lib/x86_64-linux-gnu/libXext.so
bin/test/resize: /usr/lib/x86_64-linux-gnu/libXinerama.so
bin/test/resize: /usr/lib/x86_64-linux-gnu/libXfixes.so
bin/test/resize: /usr/lib/x86_64-linux-gnu/libXcursor.so
bin/test/resize: /usr/lib/x86_64-linux-gnu/libXrender.so
bin/test/resize: /usr/lib/x86_64-linux-gnu/libXft.so
bin/test/resize: /usr/lib/x86_64-linux-gnu/libfontconfig.so
bin/test/resize: test/CMakeFiles/resize.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/test/resize"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/resize.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/resize.dir/build: bin/test/resize
.PHONY : test/CMakeFiles/resize.dir/build

test/CMakeFiles/resize.dir/clean:
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && $(CMAKE_COMMAND) -P CMakeFiles/resize.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/resize.dir/clean

test/CMakeFiles/resize.dir/depend: test/resize.cxx
test/CMakeFiles/resize.dir/depend: test/resize.h
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/CMakeFiles/resize.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/resize.dir/depend

