cd build
doxygen Doxyfile.doxygen_docs
# 生成pdf
cd latex
sed -i 's/begin{CJK}{UTF8}{min}/begin{CJK}{UTF8}{gbsn}/' refman.tex
make --silent