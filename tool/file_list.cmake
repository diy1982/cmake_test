# 在设置的编译目录中搜索源文件和头文件
# DIR_LIST为固定的目录列表
function(file_list DIR_LIST SOURCE_LIST INCLUDE_LIST)
    message(STATUS "DIR_LIST: " ${${DIR_LIST}})
    set(ALL_SOURCE_TMP "")
    set(ALL_INCLUDE_TMP "")
    foreach(CHILD ${${DIR_LIST}})
        # 源文件的目录搜索、判断，如果为真，则添加到源文件序列中
        if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${CHILD})
            file(GLOB_RECURSE SOURCE_TMP CONFIGURE_DEPENDS ${CHILD}/*.cpp ${CHILD}/*.c)
            list(APPEND ALL_SOURCE_TMP ${SOURCE_TMP})
        endif()
        # 头文件的目录搜索、判断，如果为真，则添加到头文件序列中
        # 注意头文件不搜索具体的文件
        if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${CHILD})
            # file(GLOB INCLUDE_TMP ${CHILD}/include/*.h)
            # list(APPEND ALL_INCLUDE_TMP ${INCLUDE_TMP})
            list(APPEND ALL_INCLUDE_TMP ${CMAKE_CURRENT_SOURCE_DIR}/${CHILD})
        endif()
    endforeach()
    set(${SOURCE_LIST} ${ALL_SOURCE_TMP} PARENT_SCOPE)
    set(${INCLUDE_LIST} ${ALL_INCLUDE_TMP} PARENT_SCOPE)
endfunction()