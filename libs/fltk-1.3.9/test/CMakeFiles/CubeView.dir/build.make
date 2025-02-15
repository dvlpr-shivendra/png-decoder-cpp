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
include test/CMakeFiles/CubeView.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/CubeView.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/CubeView.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/CubeView.dir/flags.make

test/CubeViewUI.cxx: test/CubeViewUI.fl
test/CubeViewUI.cxx: test/CubeViewUI.fl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating CubeViewUI.cxx, CubeViewUI.h"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && ../bin/fluid -c /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/CubeViewUI.fl

test/CubeViewUI.h: test/CubeViewUI.cxx
	@$(CMAKE_COMMAND) -E touch_nocreate test/CubeViewUI.h

test/CMakeFiles/CubeView.dir/CubeMain.cxx.o: test/CMakeFiles/CubeView.dir/flags.make
test/CMakeFiles/CubeView.dir/CubeMain.cxx.o: test/CubeMain.cxx
test/CMakeFiles/CubeView.dir/CubeMain.cxx.o: test/CMakeFiles/CubeView.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/CubeView.dir/CubeMain.cxx.o"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/CubeView.dir/CubeMain.cxx.o -MF CMakeFiles/CubeView.dir/CubeMain.cxx.o.d -o CMakeFiles/CubeView.dir/CubeMain.cxx.o -c /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/CubeMain.cxx

test/CMakeFiles/CubeView.dir/CubeMain.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CubeView.dir/CubeMain.cxx.i"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/CubeMain.cxx > CMakeFiles/CubeView.dir/CubeMain.cxx.i

test/CMakeFiles/CubeView.dir/CubeMain.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CubeView.dir/CubeMain.cxx.s"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/CubeMain.cxx -o CMakeFiles/CubeView.dir/CubeMain.cxx.s

test/CMakeFiles/CubeView.dir/CubeView.cxx.o: test/CMakeFiles/CubeView.dir/flags.make
test/CMakeFiles/CubeView.dir/CubeView.cxx.o: test/CubeView.cxx
test/CMakeFiles/CubeView.dir/CubeView.cxx.o: test/CMakeFiles/CubeView.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/CMakeFiles/CubeView.dir/CubeView.cxx.o"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/CubeView.dir/CubeView.cxx.o -MF CMakeFiles/CubeView.dir/CubeView.cxx.o.d -o CMakeFiles/CubeView.dir/CubeView.cxx.o -c /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/CubeView.cxx

test/CMakeFiles/CubeView.dir/CubeView.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CubeView.dir/CubeView.cxx.i"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/CubeView.cxx > CMakeFiles/CubeView.dir/CubeView.cxx.i

test/CMakeFiles/CubeView.dir/CubeView.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CubeView.dir/CubeView.cxx.s"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/CubeView.cxx -o CMakeFiles/CubeView.dir/CubeView.cxx.s

test/CMakeFiles/CubeView.dir/CubeViewUI.cxx.o: test/CMakeFiles/CubeView.dir/flags.make
test/CMakeFiles/CubeView.dir/CubeViewUI.cxx.o: test/CubeViewUI.cxx
test/CMakeFiles/CubeView.dir/CubeViewUI.cxx.o: test/CMakeFiles/CubeView.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object test/CMakeFiles/CubeView.dir/CubeViewUI.cxx.o"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/CubeView.dir/CubeViewUI.cxx.o -MF CMakeFiles/CubeView.dir/CubeViewUI.cxx.o.d -o CMakeFiles/CubeView.dir/CubeViewUI.cxx.o -c /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/CubeViewUI.cxx

test/CMakeFiles/CubeView.dir/CubeViewUI.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CubeView.dir/CubeViewUI.cxx.i"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/CubeViewUI.cxx > CMakeFiles/CubeView.dir/CubeViewUI.cxx.i

test/CMakeFiles/CubeView.dir/CubeViewUI.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CubeView.dir/CubeViewUI.cxx.s"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/CubeViewUI.cxx -o CMakeFiles/CubeView.dir/CubeViewUI.cxx.s

# Object files for target CubeView
CubeView_OBJECTS = \
"CMakeFiles/CubeView.dir/CubeMain.cxx.o" \
"CMakeFiles/CubeView.dir/CubeView.cxx.o" \
"CMakeFiles/CubeView.dir/CubeViewUI.cxx.o"

# External object files for target CubeView
CubeView_EXTERNAL_OBJECTS =

bin/test/CubeView: test/CMakeFiles/CubeView.dir/CubeMain.cxx.o
bin/test/CubeView: test/CMakeFiles/CubeView.dir/CubeView.cxx.o
bin/test/CubeView: test/CMakeFiles/CubeView.dir/CubeViewUI.cxx.o
bin/test/CubeView: test/CMakeFiles/CubeView.dir/build.make
bin/test/CubeView: lib/libfltk_gl.a
bin/test/CubeView: lib/libfltk.a
bin/test/CubeView: /usr/lib/x86_64-linux-gnu/libdl.a
bin/test/CubeView: /usr/lib/x86_64-linux-gnu/libSM.so
bin/test/CubeView: /usr/lib/x86_64-linux-gnu/libICE.so
bin/test/CubeView: /usr/lib/x86_64-linux-gnu/libX11.so
bin/test/CubeView: /usr/lib/x86_64-linux-gnu/libXext.so
bin/test/CubeView: /usr/lib/x86_64-linux-gnu/libXinerama.so
bin/test/CubeView: /usr/lib/x86_64-linux-gnu/libXfixes.so
bin/test/CubeView: /usr/lib/x86_64-linux-gnu/libXcursor.so
bin/test/CubeView: /usr/lib/x86_64-linux-gnu/libXrender.so
bin/test/CubeView: /usr/lib/x86_64-linux-gnu/libXft.so
bin/test/CubeView: /usr/lib/x86_64-linux-gnu/libfontconfig.so
bin/test/CubeView: /usr/lib/x86_64-linux-gnu/libOpenGL.so
bin/test/CubeView: /usr/lib/x86_64-linux-gnu/libGLX.so
bin/test/CubeView: test/CMakeFiles/CubeView.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../bin/test/CubeView"
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CubeView.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/CubeView.dir/build: bin/test/CubeView
.PHONY : test/CMakeFiles/CubeView.dir/build

test/CMakeFiles/CubeView.dir/clean:
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test && $(CMAKE_COMMAND) -P CMakeFiles/CubeView.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/CubeView.dir/clean

test/CMakeFiles/CubeView.dir/depend: test/CubeViewUI.cxx
test/CMakeFiles/CubeView.dir/depend: test/CubeViewUI.h
	cd /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9 /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test /home/techster/projects/png-decoder-cpp/libs/fltk-1.3.9/test/CMakeFiles/CubeView.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/CubeView.dir/depend

