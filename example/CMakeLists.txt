project(mytest)

include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/../include
)

add_executable(mytest glm.cpp)

# 设置输出目录为源码的当前目录
set_target_properties(mytest PROPERTIES
  RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
)
