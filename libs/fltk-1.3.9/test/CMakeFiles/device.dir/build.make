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
include test/CMakeFiles/device.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/device.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/device.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/device.dir/flags.make

test/CMakeFiles/device.dir/device.cxx.o: test/CMakeFiles/device.dir/flags.make
test/CMakeFiles/device.dir/device.cxx.o: test/device.cxx
test/CMakeFiles/device.dir/device.cxx.o: test/CMakeFiles/device.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/device.dir/device.cxx.o"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/device.dir/device.cxx.o -MF CMakeFiles/device.dir/device.cxx.o.d -o CMakeFiles/device.dir/device.cxx.o -c /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/device.cxx

test/CMakeFiles/device.dir/device.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/device.dir/device.cxx.i"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/device.cxx > CMakeFiles/device.dir/device.cxx.i

test/CMakeFiles/device.dir/device.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/device.dir/device.cxx.s"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/device.cxx -o CMakeFiles/device.dir/device.cxx.s

# Object files for target device
device_OBJECTS = \
"CMakeFiles/device.dir/device.cxx.o"

# External object files for target device
device_EXTERNAL_OBJECTS =

bin/test/device: test/CMakeFiles/device.dir/device.cxx.o
bin/test/device: test/CMakeFiles/device.dir/build.make
bin/test/device: lib/libfltk.a
bin/test/device: /usr/lib/x86_64-linux-gnu/libdl.a
bin/test/device: /usr/lib/x86_64-linux-gnu/libSM.so
bin/test/device: /usr/lib/x86_64-linux-gnu/libICE.so
bin/test/device: /usr/lib/x86_64-linux-gnu/libX11.so
bin/test/device: /usr/lib/x86_64-linux-gnu/libXext.so
bin/test/device: /usr/lib/x86_64-linux-gnu/libXinerama.so
bin/test/device: /usr/lib/x86_64-linux-gnu/libXfixes.so
bin/test/device: /usr/lib/x86_64-linux-gnu/libXcursor.so
bin/test/device: /usr/lib/x86_64-linux-gnu/libXrender.so
bin/test/device: /usr/lib/x86_64-linux-gnu/libXft.so
bin/test/device: /usr/lib/x86_64-linux-gnu/libfontconfig.so
bin/test/device: test/CMakeFiles/device.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/test/device"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/device.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/device.dir/build: bin/test/device
.PHONY : test/CMakeFiles/device.dir/build

test/CMakeFiles/device.dir/clean:
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && $(CMAKE_COMMAND) -P CMakeFiles/device.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/device.dir/clean

test/CMakeFiles/device.dir/depend:
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/CMakeFiles/device.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/device.dir/depend

