cmake_minimum_required(VERSION 2.8.10)
project(hello)

set(SOURCE_FILES
        ../../include/hello/hello.h
        hello.cpp)

add_library(${PROJECT_NAME} ${SOURCE_FILES})
