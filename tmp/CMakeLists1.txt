cmake_minimum_required(VERSION 3.5)

project(ovpncli)
set(OVPN3_DIR "D:/library/openvpn3") 
set(CMAKE_MODULE_PATH "${OVPN3_DIR}/cmake")
message("CMAKE_MODULE_PATH - ${CMAKE_MODULE_PATH}")
message("CURRENT_SOURCE_DIR - ${CMAKE_CURRENT_SOURCE_DIR}")

#set(CMAKE_TOOLCHAIN_FILE "d:/library/vcpkg/scripts/buildsystems/vcpkg.cmake")

#list(APPEND CMAKE_PREFIX_PATH "d:/library/vcpkg/installed/x64-windows/")
#list(APPEND CMAKE_PREFIX_PATH "d:/library/vcpkg/installed/x86-windows/")

#include(FindLZ4)
include(findcoredeps)  
add_executable(ovpncli cli.cpp)
add_core_dependencies(ovpncli)

file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/build.bat
    DESTINATION ${CMAKE_CURRENT_BINARY_DIR})