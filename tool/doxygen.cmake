find_package(Doxygen REQUIRED dot OPTIONAL_COMPONENTS mscgen dia)
# 这里只是举例，其它 Doxygen 配置加上 `DOXYGEN_` 前缀即可
# 输出HTML
set(DOXYGEN_GENERATE_HTML YES)
# 版本号
# set(DOXYGEN_PROJECT_NUMBER 1.0.1)
# 版本简要说明
set(DOXYGEN_PROJECT_BRIEF 说明)
# 输出中文
set(DOXYGEN_OUTPUT_LANGUAGE Chinese)
# 剥离绝对路径，显示相对路径
set(DOXYGEN_STRIP_FROM_PATH /home/wd/work/cmake_test)
# 让 doxygen 静悄悄地为你生成文档，只有出现警告或错误时，才在终端输出提示信息
set(DOXYGEN_QUIET YES)
# 输出LATEX
set(DOXYGEN_GENERATE_LATEX YES)
# 允许程序文档中显示本文档化的函数相互调用关系
set(DOXYGEN_REFERENCED_BY_RELATION YES)
set(DOXYGEN_REFERENCES_RELATION YES)
set(DOXYGEN_REFERENCES_LINK_SOURCE YES)
# 在程序文档中允许以图例形式显示函数调用关系，前提是你已经安装了 graphviz 软件包
set(DOXYGEN_HAVE_DOT YES)
set(DOXYGEN_CALL_GRAPH YES)
set(DOXYGEN_CALLER_GRAPH YES)
# 对于使用 typedef 定义的结构体、枚举、联合等数据类型，只按照 typedef 定义的类型名进行文档化
# set(DOXYGEN_TYPEDEF_HIDES_STRUCT YES)