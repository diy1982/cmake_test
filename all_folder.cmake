# 此文件需手动修改
# 库的命名，工程名、路径名要保持一致
# list的顺序不能改变
set(ALL_LIB
    "folder1" # 库1
    "folder2" # 库2
)
# 测试工程的命名，工程名、路径名要保持一致
# list的顺序不能改变
set(ALL_TEST
    "test" #UT 测试的遍历
)
# 要生成文档的文件夹，手动设置
set(DOXY_FOLDER
    "../folder1"
    "../folder1/sub_folder1" 
    "../folder1/sub_folder2" 
    "../folder2"
)