cmake_minimum_required(VERSION 3.5)

project(ovpncli)

#add to system env - $ENV{OVPN3_HOME_DIR}
message("OVPN3_HOME_DIR - $ENV{OVPN3_HOME_DIR}")
set(CMAKE_MODULE_PATH "$ENV{OVPN3_HOME_DIR}/cmake")
message("CMAKE_MODULE_PATH - ${CMAKE_MODULE_PATH}")
message("CURRENT_SOURCE_DIR - ${CMAKE_CURRENT_SOURCE_DIR}")
include(findcoredeps)  
add_executable(ovpncli cli.cpp)
add_core_dependencies(ovpncli)

file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/build.bat
    DESTINATION ${CMAKE_CURRENT_BINARY_DIR})