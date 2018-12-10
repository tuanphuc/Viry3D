cmake_minimum_required(VERSION 3.1)

if(${CMAKE_VERSION} VERSION_LESS 3.13)
  cmake_policy(VERSION ${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION})
else()
  cmake_policy(VERSION 3.13)
endif()

project(viry3d VERSION 0.1 DESCRIPTION "Viry3D Game Engine" LANGUAGES CXX)
