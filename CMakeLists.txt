cmake_minimum_required(VERSION 3.17)
project(c__Project)

set(CMAKE_CXX_STANDARD 11)

add_executable(c__Project MainTrain.cpp anomaly_detection_util.cpp anomaly_detection_util.h timeseries.h timeseries.cpp
        SimpleAnomalyDetector.cpp SimpleAnomalyDetector.h)
