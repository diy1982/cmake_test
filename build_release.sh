cmake -B ./build -DCMAKE_BUILD_TYPE=Release -DBUILD_UT=OFF -DGCOV_OPT=OFF
cmake --build ./build -j 8 --clean-first -v
# 拷贝发布的文件