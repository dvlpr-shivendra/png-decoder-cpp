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
include test/CMakeFiles/rotated_text.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/rotated_text.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/rotated_text.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/rotated_text.dir/flags.make

test/CMakeFiles/rotated_text.dir/rotated_text.cxx.o: test/CMakeFiles/rotated_text.dir/flags.make
test/CMakeFiles/rotated_text.dir/rotated_text.cxx.o: test/rotated_text.cxx
test/CMakeFiles/rotated_text.dir/rotated_text.cxx.o: test/CMakeFiles/rotated_text.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/rotated_text.dir/rotated_text.cxx.o"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/rotated_text.dir/rotated_text.cxx.o -MF CMakeFiles/rotated_text.dir/rotated_text.cxx.o.d -o CMakeFiles/rotated_text.dir/rotated_text.cxx.o -c /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/rotated_text.cxx

test/CMakeFiles/rotated_text.dir/rotated_text.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rotated_text.dir/rotated_text.cxx.i"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/rotated_text.cxx > CMakeFiles/rotated_text.dir/rotated_text.cxx.i

test/CMakeFiles/rotated_text.dir/rotated_text.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rotated_text.dir/rotated_text.cxx.s"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/rotated_text.cxx -o CMakeFiles/rotated_text.dir/rotated_text.cxx.s

# Object files for target rotated_text
rotated_text_OBJECTS = \
"CMakeFiles/rotated_text.dir/rotated_text.cxx.o"

# External object files for target rotated_text
rotated_text_EXTERNAL_OBJECTS =

bin/test/rotated_text: test/CMakeFiles/rotated_text.dir/rotated_text.cxx.o
bin/test/rotated_text: test/CMakeFiles/rotated_text.dir/build.make
bin/test/rotated_text: lib/libfltk.a
bin/test/rotated_text: /usr/lib/x86_64-linux-gnu/libdl.a
bin/test/rotated_text: /usr/lib/x86_64-linux-gnu/libSM.so
bin/test/rotated_text: /usr/lib/x86_64-linux-gnu/libICE.so
bin/test/rotated_text: /usr/lib/x86_64-linux-gnu/libX11.so
bin/test/rotated_text: /usr/lib/x86_64-linux-gnu/libXext.so
bin/test/rotated_text: /usr/lib/x86_64-linux-gnu/libXinerama.so
bin/test/rotated_text: /usr/lib/x86_64-linux-gnu/libXfixes.so
bin/test/rotated_text: /usr/lib/x86_64-linux-gnu/libXcursor.so
bin/test/rotated_text: /usr/lib/x86_64-linux-gnu/libXrender.so
bin/test/rotated_text: /usr/lib/x86_64-linux-gnu/libXft.so
bin/test/rotated_text: /usr/lib/x86_64-linux-gnu/libfontconfig.so
bin/test/rotated_text: test/CMakeFiles/rotated_text.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/test/rotated_text"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rotated_text.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/rotated_text.dir/build: bin/test/rotated_text
.PHONY : test/CMakeFiles/rotated_text.dir/build

test/CMakeFiles/rotated_text.dir/clean:
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && $(CMAKE_COMMAND) -P CMakeFiles/rotated_text.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/rotated_text.dir/clean

test/CMakeFiles/rotated_text.dir/depend:
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/CMakeFiles/rotated_text.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/rotated_text.dir/depend

