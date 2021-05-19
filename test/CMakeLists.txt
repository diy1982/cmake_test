# cmake_minimum_required(VERSION 3.16)
project(test)

include(../tool/file_list.cmake)

set(ALL_FOLDER
    "../folder1/sub_folder1"
    "../folder1/sub_folder2"
    "../folder1/"
    "../folder2"
)
set(LIB_LIST
    "folder1"
    "folder2"
)
# 变量不能与函数的参数重名
# file_list(ALL_FOLDER ALL_SOURCE ALL_INCLUDE)
# message(STATUS "ALL_SOURCE: " ${ALL_SOURCE})
# message(STATUS "ALL_INCLUDE: " ${ALL_INCLUDE})
# include_directories(${ALL_INCLUDE})

add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} ${LIB_LIST})
target_include_directories(${PROJECT_NAME} PUBLIC ${ALL_FOLDER})