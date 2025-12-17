cmake_minimum_required(VERSION 3.23)
project(MyProj)

if(WIN32)
    add_subdirectory(external/glfw-3.4)
    add_subdirectory(example/)
endif()
add_subdirectory(external/glad)
add_subdirectory(external/glm)
add_subdirectory(external/stb_image)

add_executable(myprog src/main.cpp)
target_link_libraries(myprog PRIVATE
    glad  glfw  glm  stb_image
)
target_include_directories(myprog PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)