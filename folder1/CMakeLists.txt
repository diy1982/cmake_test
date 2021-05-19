project(folder1)

include(../tool/file_list.cmake)

set(ALL_FOLDER
    "../folder1/sub_folder1"
    "../folder1/sub_folder2"
    "../folder1/"
)
# 变量不能与函数的参数重名
file_list(ALL_FOLDER ALL_SOURCE ALL_INCLUDE)
message(STATUS "ALL_SOURCE: " ${ALL_SOURCE})
message(STATUS "ALL_INCLUDE: " ${ALL_INCLUDE})
include_directories(${ALL_INCLUDE})
add_library(${PROJECT_NAME} ${ALL_SOURCE})
