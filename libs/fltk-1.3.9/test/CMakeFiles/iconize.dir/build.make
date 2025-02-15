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
include test/CMakeFiles/iconize.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/iconize.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/iconize.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/iconize.dir/flags.make

test/CMakeFiles/iconize.dir/iconize.cxx.o: test/CMakeFiles/iconize.dir/flags.make
test/CMakeFiles/iconize.dir/iconize.cxx.o: test/iconize.cxx
test/CMakeFiles/iconize.dir/iconize.cxx.o: test/CMakeFiles/iconize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/iconize.dir/iconize.cxx.o"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/iconize.dir/iconize.cxx.o -MF CMakeFiles/iconize.dir/iconize.cxx.o.d -o CMakeFiles/iconize.dir/iconize.cxx.o -c /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/iconize.cxx

test/CMakeFiles/iconize.dir/iconize.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/iconize.dir/iconize.cxx.i"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/iconize.cxx > CMakeFiles/iconize.dir/iconize.cxx.i

test/CMakeFiles/iconize.dir/iconize.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/iconize.dir/iconize.cxx.s"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/iconize.cxx -o CMakeFiles/iconize.dir/iconize.cxx.s

# Object files for target iconize
iconize_OBJECTS = \
"CMakeFiles/iconize.dir/iconize.cxx.o"

# External object files for target iconize
iconize_EXTERNAL_OBJECTS =

bin/test/iconize: test/CMakeFiles/iconize.dir/iconize.cxx.o
bin/test/iconize: test/CMakeFiles/iconize.dir/build.make
bin/test/iconize: lib/libfltk.a
bin/test/iconize: /usr/lib/x86_64-linux-gnu/libdl.a
bin/test/iconize: /usr/lib/x86_64-linux-gnu/libSM.so
bin/test/iconize: /usr/lib/x86_64-linux-gnu/libICE.so
bin/test/iconize: /usr/lib/x86_64-linux-gnu/libX11.so
bin/test/iconize: /usr/lib/x86_64-linux-gnu/libXext.so
bin/test/iconize: /usr/lib/x86_64-linux-gnu/libXinerama.so
bin/test/iconize: /usr/lib/x86_64-linux-gnu/libXfixes.so
bin/test/iconize: /usr/lib/x86_64-linux-gnu/libXcursor.so
bin/test/iconize: /usr/lib/x86_64-linux-gnu/libXrender.so
bin/test/iconize: /usr/lib/x86_64-linux-gnu/libXft.so
bin/test/iconize: /usr/lib/x86_64-linux-gnu/libfontconfig.so
bin/test/iconize: test/CMakeFiles/iconize.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/test/iconize"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/iconize.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/iconize.dir/build: bin/test/iconize
.PHONY : test/CMakeFiles/iconize.dir/build

test/CMakeFiles/iconize.dir/clean:
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && $(CMAKE_COMMAND) -P CMakeFiles/iconize.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/iconize.dir/clean

test/CMakeFiles/iconize.dir/depend:
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/CMakeFiles/iconize.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/iconize.dir/depend

