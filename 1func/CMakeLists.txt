include(../all_folder.cmake)
list(GET ALL_LIB 0 PROJECT_NAME)
project(${PROJECT_NAME})

# 库工程的目录列表，需要列到子目录级
# 要构建的所有目录，需手动修改
set(ALL_FOLDER
    "../1func/dpd"
#     "../folder1/sub_folder2"
#     "../folder1/"
)

# 搜索测试的源文件和头文件目录
# 变量不能与函数的参数重名
include(../tool/file_list.cmake)
file_list(ALL_FOLDER ALL_SOURCE ALL_INCLUDE)



# include_directories(${ALL_INCLUDE} ../0basic)
add_library(${PROJECT_NAME} ${ALL_SOURCE})
target_include_directories(${PROJECT_NAME} PUBLIC ../0basic ../platform)
