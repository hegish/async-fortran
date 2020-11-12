# contact: Jan Hegewald <jan.hegewald@awi.de> Alfred Wegener Institute
cmake_minimum_required(VERSION 3.4)

project(async_fortran_example_simple CXX C Fortran)

add_subdirectory(../src ${PROJECT_BINARY_DIR}/async_threads_fortran)

add_executable(${PROJECT_NAME} ${CMAKE_CURRENT_LIST_DIR}/main.F90)
target_link_libraries(${PROJECT_NAME} async_threads_fortran)
