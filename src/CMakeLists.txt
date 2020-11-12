# contact: Jan Hegewald <jan.hegewald@awi.de> Alfred Wegener Institute
cmake_minimum_required(VERSION 3.4)

project(async_threads_fortran CXX C Fortran)

add_subdirectory(async_threads_cpp)
add_library(${PROJECT_NAME} ${CMAKE_CURRENT_LIST_DIR}/async_threads_module.F90)
target_link_libraries(${PROJECT_NAME} PRIVATE async_threads_cpp)
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_BINARY_DIR})
