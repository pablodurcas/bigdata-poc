cmake_minimum_required(VERSION 2.8.6)
project(java_hadoop_api Java)

find_package(Java)
include(UseJava)

set(CMAKE_VERBOSE_MAKEFILE 1)
set(CMAKE_JAVA_INCLUDE_PATH /usr/share/hadoop/hadoop-core-1.1.2.jar)

set(SRC1
    src/URLCat.java
)

set(SRC2
    src/FileSystemCat.java
)

add_jar(URLCat ${SRC1})
add_jar(FileSystemCat ${SRC2})
