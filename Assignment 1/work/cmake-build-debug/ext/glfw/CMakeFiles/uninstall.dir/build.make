# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug"

# Utility rule file for uninstall.

# Include any custom commands dependencies for this target.
include ext/glfw/CMakeFiles/uninstall.dir/compiler_depend.make

# Include the progress variables for this target.
include ext/glfw/CMakeFiles/uninstall.dir/progress.make

ext/glfw/CMakeFiles/uninstall:
	cd "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/ext/glfw" && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -P /Users/gray/Documents/UNI/CGRA350/A2\ copy/Assignment\ 1/work/cmake-build-debug/ext/glfw/cmake_uninstall.cmake

uninstall: ext/glfw/CMakeFiles/uninstall
uninstall: ext/glfw/CMakeFiles/uninstall.dir/build.make
.PHONY : uninstall

# Rule to build all files generated by this target.
ext/glfw/CMakeFiles/uninstall.dir/build: uninstall
.PHONY : ext/glfw/CMakeFiles/uninstall.dir/build

ext/glfw/CMakeFiles/uninstall.dir/clean:
	cd "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/ext/glfw" && $(CMAKE_COMMAND) -P CMakeFiles/uninstall.dir/cmake_clean.cmake
.PHONY : ext/glfw/CMakeFiles/uninstall.dir/clean

ext/glfw/CMakeFiles/uninstall.dir/depend:
	cd "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work" "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/ext/glfw" "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug" "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/ext/glfw" "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/ext/glfw/CMakeFiles/uninstall.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : ext/glfw/CMakeFiles/uninstall.dir/depend

