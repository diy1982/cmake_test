cd ../build/test
# 这步可有可无，即归零所有执行过程的覆盖率信息的统计文件
lcov -d ./ -z
# 1.初始化并创建基准数据文件
# --rc lcov_branch_coverage=1 分支覆盖率使能， -c 捕获， -i 初始化， -d 应用目录， -o 输出文件
lcov --rc lcov_branch_coverage=1 -c -i -d ./ -o init.info
# 2.执行编译后的测试文件
./test
# 3.收集测试文件运行后产生的覆盖率文件
lcov --rc lcov_branch_coverage=1 -c -d ./ -o cover.info
# 4.合并基准数据和执行测试文件后生成的覆盖率数据
# -a 合并文件
lcov -a init.info -a cover.info -o total.info
# 5.过滤不需要关注的源文件路径和信息
# --remove 删除统计信息中如下的代码或文件，支持正则
# lcov --remove total.info '*/test/*' '*/test_gcc/build/*' '*/gtest/*' -o final.info
lcov --remove total.info '*/usr/include/*' '*/gtest/*' -o final.info
# 6.通过final.info生成html文件
# 如果是git目录可以获取此次版本的commitID，如果不是忽略此步
# commitID=$(git log |head -n1 | awk '{print $2}')
# 这里可以带上项目名称和提交ID，如果没有可以忽略此步
# genhtml --branch-coverage -o cover_report --legend --title "${project_name} commit SHA1:${commitID}" --prefix=${curr_path} final.info
# -o 生成的html及相关文件的目录名称，--legend简单的统计信息说明
# --title项目名称，--prefix 将要生成的html文件的路径
genhtml --branch-coverage -o cover_report --legend --title "GTest_Test" --prefix=./ final.info