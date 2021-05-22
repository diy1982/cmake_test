cd build
cppcheck --enable=all -j 8 --addon=/usr/lib/x86_64-linux-gnu/cppcheck/addons/cert.py --project=compile_commands.json --xml --xml-version=2 2>err.xml
cppcheck-htmlreport --file=err.xml --report-dir=cppcheck_html --source-dir=../ --title=CMake_Test --source-encoding=utf-8