cmake_minimum_required(VERSION 2.8.7)
project(test_hello CXX)

set(SOURCE_FILES test_hello.cpp)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})

target_link_libraries(${PROJECT_NAME} hello ${CONAN_LIBS})

add_test(NAME ${PROJECT_NAME}
        COMMAND ${PROJECT_NAME})
