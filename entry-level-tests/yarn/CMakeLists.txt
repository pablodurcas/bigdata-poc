cmake_minimum_required(VERSION 2.8.6)
project(java_hadoop Java)

find_package(Java)
include(UseJava)

set(CMAKE_VERBOSE_MAKEFILE 1)
set(CMAKE_JAVA_INCLUDE_PATH 
	/opt/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-client-core-2.0.4-alpha.jar
	/opt/hadoop/share/hadoop/common/hadoop-common-2.0.4-alpha.jar )

set(SRC
    src/MaxTemperature.java
    src/MaxTemperatureMapper.java
    src/MaxTemperatureReducer.java
)

add_jar(MaxTemperature ${SRC})
