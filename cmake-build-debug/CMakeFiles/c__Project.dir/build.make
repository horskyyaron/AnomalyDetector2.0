# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/yaron/Downloads/clion-2020.2.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/yaron/Downloads/clion-2020.2.4/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yaron/Desktop/AnomalyDetector

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yaron/Desktop/AnomalyDetector/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/c__Project.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/c__Project.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/c__Project.dir/flags.make

CMakeFiles/c__Project.dir/MainTrain.cpp.o: CMakeFiles/c__Project.dir/flags.make
CMakeFiles/c__Project.dir/MainTrain.cpp.o: ../MainTrain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yaron/Desktop/AnomalyDetector/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/c__Project.dir/MainTrain.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/c__Project.dir/MainTrain.cpp.o -c /home/yaron/Desktop/AnomalyDetector/MainTrain.cpp

CMakeFiles/c__Project.dir/MainTrain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c__Project.dir/MainTrain.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yaron/Desktop/AnomalyDetector/MainTrain.cpp > CMakeFiles/c__Project.dir/MainTrain.cpp.i

CMakeFiles/c__Project.dir/MainTrain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c__Project.dir/MainTrain.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yaron/Desktop/AnomalyDetector/MainTrain.cpp -o CMakeFiles/c__Project.dir/MainTrain.cpp.s

CMakeFiles/c__Project.dir/anomaly_detection_util.cpp.o: CMakeFiles/c__Project.dir/flags.make
CMakeFiles/c__Project.dir/anomaly_detection_util.cpp.o: ../anomaly_detection_util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yaron/Desktop/AnomalyDetector/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/c__Project.dir/anomaly_detection_util.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/c__Project.dir/anomaly_detection_util.cpp.o -c /home/yaron/Desktop/AnomalyDetector/anomaly_detection_util.cpp

CMakeFiles/c__Project.dir/anomaly_detection_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c__Project.dir/anomaly_detection_util.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yaron/Desktop/AnomalyDetector/anomaly_detection_util.cpp > CMakeFiles/c__Project.dir/anomaly_detection_util.cpp.i

CMakeFiles/c__Project.dir/anomaly_detection_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c__Project.dir/anomaly_detection_util.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yaron/Desktop/AnomalyDetector/anomaly_detection_util.cpp -o CMakeFiles/c__Project.dir/anomaly_detection_util.cpp.s

CMakeFiles/c__Project.dir/timeseries.cpp.o: CMakeFiles/c__Project.dir/flags.make
CMakeFiles/c__Project.dir/timeseries.cpp.o: ../timeseries.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yaron/Desktop/AnomalyDetector/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/c__Project.dir/timeseries.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/c__Project.dir/timeseries.cpp.o -c /home/yaron/Desktop/AnomalyDetector/timeseries.cpp

CMakeFiles/c__Project.dir/timeseries.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c__Project.dir/timeseries.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yaron/Desktop/AnomalyDetector/timeseries.cpp > CMakeFiles/c__Project.dir/timeseries.cpp.i

CMakeFiles/c__Project.dir/timeseries.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c__Project.dir/timeseries.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yaron/Desktop/AnomalyDetector/timeseries.cpp -o CMakeFiles/c__Project.dir/timeseries.cpp.s

CMakeFiles/c__Project.dir/SimpleAnomalyDetector.cpp.o: CMakeFiles/c__Project.dir/flags.make
CMakeFiles/c__Project.dir/SimpleAnomalyDetector.cpp.o: ../SimpleAnomalyDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yaron/Desktop/AnomalyDetector/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/c__Project.dir/SimpleAnomalyDetector.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/c__Project.dir/SimpleAnomalyDetector.cpp.o -c /home/yaron/Desktop/AnomalyDetector/SimpleAnomalyDetector.cpp

CMakeFiles/c__Project.dir/SimpleAnomalyDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c__Project.dir/SimpleAnomalyDetector.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yaron/Desktop/AnomalyDetector/SimpleAnomalyDetector.cpp > CMakeFiles/c__Project.dir/SimpleAnomalyDetector.cpp.i

CMakeFiles/c__Project.dir/SimpleAnomalyDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c__Project.dir/SimpleAnomalyDetector.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yaron/Desktop/AnomalyDetector/SimpleAnomalyDetector.cpp -o CMakeFiles/c__Project.dir/SimpleAnomalyDetector.cpp.s

# Object files for target c__Project
c__Project_OBJECTS = \
"CMakeFiles/c__Project.dir/MainTrain.cpp.o" \
"CMakeFiles/c__Project.dir/anomaly_detection_util.cpp.o" \
"CMakeFiles/c__Project.dir/timeseries.cpp.o" \
"CMakeFiles/c__Project.dir/SimpleAnomalyDetector.cpp.o"

# External object files for target c__Project
c__Project_EXTERNAL_OBJECTS =

c__Project: CMakeFiles/c__Project.dir/MainTrain.cpp.o
c__Project: CMakeFiles/c__Project.dir/anomaly_detection_util.cpp.o
c__Project: CMakeFiles/c__Project.dir/timeseries.cpp.o
c__Project: CMakeFiles/c__Project.dir/SimpleAnomalyDetector.cpp.o
c__Project: CMakeFiles/c__Project.dir/build.make
c__Project: CMakeFiles/c__Project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yaron/Desktop/AnomalyDetector/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable c__Project"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/c__Project.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/c__Project.dir/build: c__Project

.PHONY : CMakeFiles/c__Project.dir/build

CMakeFiles/c__Project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/c__Project.dir/cmake_clean.cmake
.PHONY : CMakeFiles/c__Project.dir/clean

CMakeFiles/c__Project.dir/depend:
	cd /home/yaron/Desktop/AnomalyDetector/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yaron/Desktop/AnomalyDetector /home/yaron/Desktop/AnomalyDetector /home/yaron/Desktop/AnomalyDetector/cmake-build-debug /home/yaron/Desktop/AnomalyDetector/cmake-build-debug /home/yaron/Desktop/AnomalyDetector/cmake-build-debug/CMakeFiles/c__Project.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/c__Project.dir/depend

