cmake_minimum_required(VERSION 3.25.2)

project(chip8)

add_executable(${PROJECT_NAME} main.cpp)

add_subdirectory(dependencies/minifb)
target_link_libraries(${PROJECT_NAME} minifb)
