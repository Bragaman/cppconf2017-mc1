cmake_minimum_required(VERSION 2.8.10)
project(mc_01)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

include_directories(.)

set(CMAKE_CXX_STANDARD 11)

add_subdirectory(src/hello)


#enable_testing()
#add_subdirectory(test_package)

#set(SOURCE_FILES src/main.cpp)

#add_executable(${PROJECT_NAME} ${SOURCE_FILES})
#target_link_libraries(${PROJECT_NAME} hello ${CONAN_LIBS})
