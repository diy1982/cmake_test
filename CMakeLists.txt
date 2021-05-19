cmake_minimum_required(VERSION 3.16)
project(cmake_test)

include(tool/file_list.cmake)
set(SUB_DIR
    "folder2"
    "test"
)
# foreach(CHILD ${SUB_DIR})
#     add_subdirectory(${SUB_DIR})
# endforeach()
add_subdirectory(folder2)
add_subdirectory(test)

# include_directories(${SUB_DIR})



# set(DIR
#     "folder2"
#     # "folder1"
# )
# message(STATUS "DIR: " ${DIR})

# file_list(DIR SOURCE_FILES INCLUDE_FILES)
# message(STATUS "SOURCE_FILES: " ${SOURCE_FILES})
# message(STATUS "INCLUDE_FILES: " ${INCLUDE_FILES})
