cmake_minimum_required(VERSION 2.8.6)
project(java_hadoop Java)

find_package(Java)
include(UseJava)

set(CMAKE_VERBOSE_MAKEFILE 1)
set(CMAKE_JAVA_INCLUDE_PATH /usr/share/hadoop/hadoop-core-1.1.2.jar)
set(CMAKE_JAVA_MANIFEST src/manifest.mf)

set(SRC
    src/MaxTemperature.java
    src/MaxTemperatureMapper.java
    src/MaxTemperatureReducer.java
)

add_jar(MaxTemperature ${SRC})
