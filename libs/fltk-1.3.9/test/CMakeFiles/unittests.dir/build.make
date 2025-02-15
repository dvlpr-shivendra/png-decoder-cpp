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
include test/CMakeFiles/unittests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/unittests.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/unittests.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/unittests.dir/flags.make

test/CMakeFiles/unittests.dir/unittests.cxx.o: test/CMakeFiles/unittests.dir/flags.make
test/CMakeFiles/unittests.dir/unittests.cxx.o: test/unittests.cxx
test/CMakeFiles/unittests.dir/unittests.cxx.o: test/CMakeFiles/unittests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/unittests.dir/unittests.cxx.o"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/unittests.dir/unittests.cxx.o -MF CMakeFiles/unittests.dir/unittests.cxx.o.d -o CMakeFiles/unittests.dir/unittests.cxx.o -c /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/unittests.cxx

test/CMakeFiles/unittests.dir/unittests.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unittests.dir/unittests.cxx.i"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/unittests.cxx > CMakeFiles/unittests.dir/unittests.cxx.i

test/CMakeFiles/unittests.dir/unittests.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unittests.dir/unittests.cxx.s"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/unittests.cxx -o CMakeFiles/unittests.dir/unittests.cxx.s

# Object files for target unittests
unittests_OBJECTS = \
"CMakeFiles/unittests.dir/unittests.cxx.o"

# External object files for target unittests
unittests_EXTERNAL_OBJECTS =

bin/test/unittests: test/CMakeFiles/unittests.dir/unittests.cxx.o
bin/test/unittests: test/CMakeFiles/unittests.dir/build.make
bin/test/unittests: lib/libfltk.a
bin/test/unittests: /usr/lib/x86_64-linux-gnu/libdl.a
bin/test/unittests: /usr/lib/x86_64-linux-gnu/libSM.so
bin/test/unittests: /usr/lib/x86_64-linux-gnu/libICE.so
bin/test/unittests: /usr/lib/x86_64-linux-gnu/libX11.so
bin/test/unittests: /usr/lib/x86_64-linux-gnu/libXext.so
bin/test/unittests: /usr/lib/x86_64-linux-gnu/libXinerama.so
bin/test/unittests: /usr/lib/x86_64-linux-gnu/libXfixes.so
bin/test/unittests: /usr/lib/x86_64-linux-gnu/libXcursor.so
bin/test/unittests: /usr/lib/x86_64-linux-gnu/libXrender.so
bin/test/unittests: /usr/lib/x86_64-linux-gnu/libXft.so
bin/test/unittests: /usr/lib/x86_64-linux-gnu/libfontconfig.so
bin/test/unittests: test/CMakeFiles/unittests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/test/unittests"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unittests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/unittests.dir/build: bin/test/unittests
.PHONY : test/CMakeFiles/unittests.dir/build

test/CMakeFiles/unittests.dir/clean:
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && $(CMAKE_COMMAND) -P CMakeFiles/unittests.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/unittests.dir/clean

test/CMakeFiles/unittests.dir/depend:
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/CMakeFiles/unittests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/unittests.dir/depend

