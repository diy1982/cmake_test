# CMAKE generated file: DO NOT EDIT!
# Generated by CMake Version 3.16

# SOURCE_TMP at tool/file_list.cmake:10 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/wd/work/cmake_test/folder2/../folder2/*.c")
set(OLD_GLOB
  "/home/wd/work/cmake_test/folder2/../folder2/foo4.c"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/wd/work/cmake_test/build/CMakeFiles/cmake.verify_globs")
endif()

# SOURCE_TMP at tool/file_list.cmake:10 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/wd/work/cmake_test/folder2/../folder2/*.cpp")
set(OLD_GLOB
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/wd/work/cmake_test/build/CMakeFiles/cmake.verify_globs")
endif()
