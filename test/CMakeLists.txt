include(../all_folder.cmake)
list(GET ALL_TEST 0 PROJECT_NAME)
project(${PROJECT_NAME})

# 库的头文件路径，需要列到子目录级
# 需要根据库的发布路径修改
# 首选为库对外的发布的路径
# 如果是白盒测试，需要同时包含库的内部头文件路径
# 需手动修改
set(LIB_INCLUDE
    "../folder1/sub_folder1"
    "../folder1/sub_folder2"
    "../folder1/"
    "../folder2"
)

# 测试工程的目录列表，需要列到子目录级
# 要构建的所有目录，需手动修改
set(TEST_FOLDER 
    ""
)

# 搜索测试的源文件和头文件目录
# 变量不能与函数的参数重名
include(../tool/file_list.cmake)
file_list(TEST_FOLDER TEST_SOURCE TEST_INCLUDE)

# 构建可执行的测试工程
add_executable(${PROJECT_NAME} ${TEST_SOURCE} main.cpp)
target_link_libraries(${PROJECT_NAME} ${ALL_LIB})
target_include_directories(${PROJECT_NAME} PUBLIC ${LIB_INCLUDE} ${TEST_INCLUDE})
