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

# Include any dependencies generated for this target.
include ext/glm/CMakeFiles/glm_dummy.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include ext/glm/CMakeFiles/glm_dummy.dir/compiler_depend.make

# Include the progress variables for this target.
include ext/glm/CMakeFiles/glm_dummy.dir/progress.make

# Include the compile flags for this target's objects.
include ext/glm/CMakeFiles/glm_dummy.dir/flags.make

ext/glm/CMakeFiles/glm_dummy.dir/detail/dummy.cpp.o: ext/glm/CMakeFiles/glm_dummy.dir/flags.make
ext/glm/CMakeFiles/glm_dummy.dir/detail/dummy.cpp.o: ../ext/glm/detail/dummy.cpp
ext/glm/CMakeFiles/glm_dummy.dir/detail/dummy.cpp.o: ext/glm/CMakeFiles/glm_dummy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ext/glm/CMakeFiles/glm_dummy.dir/detail/dummy.cpp.o"
	cd "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/ext/glm" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ext/glm/CMakeFiles/glm_dummy.dir/detail/dummy.cpp.o -MF CMakeFiles/glm_dummy.dir/detail/dummy.cpp.o.d -o CMakeFiles/glm_dummy.dir/detail/dummy.cpp.o -c "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/ext/glm/detail/dummy.cpp"

ext/glm/CMakeFiles/glm_dummy.dir/detail/dummy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glm_dummy.dir/detail/dummy.cpp.i"
	cd "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/ext/glm" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/ext/glm/detail/dummy.cpp" > CMakeFiles/glm_dummy.dir/detail/dummy.cpp.i

ext/glm/CMakeFiles/glm_dummy.dir/detail/dummy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glm_dummy.dir/detail/dummy.cpp.s"
	cd "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/ext/glm" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/ext/glm/detail/dummy.cpp" -o CMakeFiles/glm_dummy.dir/detail/dummy.cpp.s

ext/glm/CMakeFiles/glm_dummy.dir/detail/glm.cpp.o: ext/glm/CMakeFiles/glm_dummy.dir/flags.make
ext/glm/CMakeFiles/glm_dummy.dir/detail/glm.cpp.o: ../ext/glm/detail/glm.cpp
ext/glm/CMakeFiles/glm_dummy.dir/detail/glm.cpp.o: ext/glm/CMakeFiles/glm_dummy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ext/glm/CMakeFiles/glm_dummy.dir/detail/glm.cpp.o"
	cd "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/ext/glm" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ext/glm/CMakeFiles/glm_dummy.dir/detail/glm.cpp.o -MF CMakeFiles/glm_dummy.dir/detail/glm.cpp.o.d -o CMakeFiles/glm_dummy.dir/detail/glm.cpp.o -c "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/ext/glm/detail/glm.cpp"

ext/glm/CMakeFiles/glm_dummy.dir/detail/glm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glm_dummy.dir/detail/glm.cpp.i"
	cd "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/ext/glm" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/ext/glm/detail/glm.cpp" > CMakeFiles/glm_dummy.dir/detail/glm.cpp.i

ext/glm/CMakeFiles/glm_dummy.dir/detail/glm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glm_dummy.dir/detail/glm.cpp.s"
	cd "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/ext/glm" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/ext/glm/detail/glm.cpp" -o CMakeFiles/glm_dummy.dir/detail/glm.cpp.s

# Object files for target glm_dummy
glm_dummy_OBJECTS = \
"CMakeFiles/glm_dummy.dir/detail/dummy.cpp.o" \
"CMakeFiles/glm_dummy.dir/detail/glm.cpp.o"

# External object files for target glm_dummy
glm_dummy_EXTERNAL_OBJECTS =

bin/glm_dummy: ext/glm/CMakeFiles/glm_dummy.dir/detail/dummy.cpp.o
bin/glm_dummy: ext/glm/CMakeFiles/glm_dummy.dir/detail/glm.cpp.o
bin/glm_dummy: ext/glm/CMakeFiles/glm_dummy.dir/build.make
bin/glm_dummy: ext/glm/CMakeFiles/glm_dummy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../bin/glm_dummy"
	cd "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/ext/glm" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glm_dummy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ext/glm/CMakeFiles/glm_dummy.dir/build: bin/glm_dummy
.PHONY : ext/glm/CMakeFiles/glm_dummy.dir/build

ext/glm/CMakeFiles/glm_dummy.dir/clean:
	cd "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/ext/glm" && $(CMAKE_COMMAND) -P CMakeFiles/glm_dummy.dir/cmake_clean.cmake
.PHONY : ext/glm/CMakeFiles/glm_dummy.dir/clean

ext/glm/CMakeFiles/glm_dummy.dir/depend:
	cd "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work" "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/ext/glm" "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug" "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/ext/glm" "/Users/gray/Documents/UNI/CGRA350/A2 copy/Assignment 1/work/cmake-build-debug/ext/glm/CMakeFiles/glm_dummy.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : ext/glm/CMakeFiles/glm_dummy.dir/depend

