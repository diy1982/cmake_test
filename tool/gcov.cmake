# 增加GCov的编译选项
add_definitions(-fprofile-arcs -ftest-coverage)
# 链接时增加GCov的库
set(CMAKE_EXE_LINKER_FLAGS "-lgcov --coverage")
