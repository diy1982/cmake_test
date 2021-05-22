# 增加GCov的编译选项
# add_definitions(-fprofile-arcs -ftest-coverage)
# 打开所有编译告警
add_definitions(-Wall)

# 设置标准库版本为c++17，可选为c++98/c++11/c++14/c++17
# set(CMAKE_CXX_FLAGS "-std=c++17 --coverage")
set(CMAKE_CXX_FLAGS "-std=c++17")
# 设置Debug模式下，不开启优化，开启调试，生成更详细的gdb调试信息
set(CMAKE_CXX_FLAGS_DEBUG "-O0 -g -ggdb")
# 设置Release模式下，开启最高级优化
set(CMAKE_CXX_FLAGS_RELEASE "-O3")

# 设置标准库版本为c99 也选为c89/c99/c11/c17
# set(CMAKE_C_FLAGS "-std=c99 --coverage")
set(CMAKE_C_FLAGS "-std=c89")
# 设置Debug模式下，不开启优化，开启调试，生成更详细的gdb调试信息
set(CMAKE_C_FLAGS_DEBUG "-O0 -g -ggdb")
# 设置Release模式下，开启最高级优化
set(CMAKE_C_FLAGS_RELEASE "-O3")

# 链接时增加GCov的库
# set(CMAKE_EXE_LINKER_FLAGS "-lgcov --coverage")
