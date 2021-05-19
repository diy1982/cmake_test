cmake_minimum_required(VERSION 3.16)
project(cmake_test)

set(SUB_DIR
    "folder1"
    "folder2"
    "test"
)

add_subdirectory(folder1)
add_subdirectory(folder2)
add_subdirectory(test)
