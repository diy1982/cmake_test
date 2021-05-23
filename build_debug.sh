# 删除gcov的文件
find . -name "*.gcda"|xargs rm -rfv
# 生成makefile
cmake -B ./build -DCMAKE_BUILD_TYPE=Debug -DBUILD_UT=ON -DGCOV_OPT=ON
# 构建
cmake --build ./build -j 8 --clean-first -v

# 执行lcov
./tool/lcov.sh
# 执行cppcheck
./tool/cppcheck.sh
# 执行doxygen
./tool/doxygen.sh
