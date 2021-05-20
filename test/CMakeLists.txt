include(../all_folder.cmake)
list(GET ALL_TEST 0 PROJECT_NAME)
project(${PROJECT_NAME})

include(GoogleTest)
include(CTest)
enable_testing()

include(../tool/file_list.cmake)

# 需要测试的文件路径，需要列到子目录级
# 需要根据库的发布路径修改
# 如果是白盒测试，需要同时包含库的内部头文件路径
# 由于使用GCOV来统计库的覆盖率，所以需要把所有的源文件编到一起
# 需手动修改
set(TEST_LIST
    "../folder1/sub_folder1"
    "../folder1/sub_folder2"
    "../folder1/"
    "../folder2"
)
file_list(TEST_LIST LIB_SOURCE LIB_INCLUDE)
# 测试工程的目录列表，需要列到子目录级
# 要构建的所有目录，需手动修改
set(TEST_FOLDER 
    "test_case/folder1_test"
    "test_case/folder2_test"
)

# 搜索测试的源文件和头文件目录
# 变量不能与函数的参数重名

file_list(TEST_FOLDER TEST_SOURCE TEST_INCLUDE)

# 构建可执行的测试工程
# add_executable(${PROJECT_NAME} ${TEST_SOURCE} main.cpp)
add_executable(${PROJECT_NAME} ${TEST_SOURCE} ${LIB_SOURCE} main.cpp)
# target_link_libraries(${PROJECT_NAME} ${ALL_LIB})
target_link_libraries(${PROJECT_NAME} gtest pthread)
target_include_directories(${PROJECT_NAME} PUBLIC ${LIB_INCLUDE} ${TEST_INCLUDE})

gtest_discover_tests(${PROJECT_NAME})
