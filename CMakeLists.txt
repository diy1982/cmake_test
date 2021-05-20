cmake_minimum_required(VERSION 3.16)
project(cmake_test)
include(tool/build_options.cmake)
# UT工程的构建开关，默认关
option(BUILD_UT "是否构建UT工程" OFF)
# UT工程GCOV开关，默认开
option(GCOV_OPT "是否构建GCOV" ON)

# 调试用
set(BUILD_UT ON)
message(STATUS "BUILD_UT: ${BUILD_UT}")

# 导入库变量，测试工程变量
include(all_folder.cmake)
list(GET ALL_TEST 0 UT_PRJ)

# 依次构建库
# foreach(CHILD ${ALL_LIB})
#     message(STATUS "Bulid Library: ${CHILD}")
#     add_subdirectory(${CHILD})
# endforeach()

# 构建UT工程
if(BUILD_UT)
    message(STATUS "Bulid UT Project")
    # 只有构建可执行文件的时候才能有GCOV
    if(GCOV_OPT)
        include(tool/gcov.cmake)
    endif()
    add_subdirectory(${UT_PRJ})
else()
    # 依次构建库
    foreach(CHILD ${ALL_LIB})
        message(STATUS "Bulid Library: ${CHILD}")
        add_subdirectory(${CHILD})
    endforeach()
endif()
 