# WSL2搭建C/C++环境的记录

本文是在WSL2上搭建的记录，涉及的工具、环境等都是皮毛。

思路是WSL2上安装Ubuntu，通过VSCode将Git、CMake、GTest、GCov、LCOV、Doxygen、Cppcheck等连结起来进行开发、构建、验证。

# 安装WSL2

参考[Windows安装WSL2](https://blog.csdn.net/diy1982/article/details/116260306?spm=1001.2014.3001.5501)

# Ubuntu的使用

参考[WSL2(Ubuntu)使用小记](https://blog.csdn.net/diy1982/article/details/116497546?spm=1001.2014.3001.5501)

# 在Ubuntu上安装工具

Git安装

```shell
sudo apt install git
```

Git配置

```shell
git config --global user.name "xxx"

git config --global user.email "xxx@xxx.com"
```

CMake安装

```shell
sudo apt install cmake
```

GTest安装

参考[WLS2(Ubuntu)安装GTest](https://blog.csdn.net/diy1982/article/details/116310301?spm=1001.2014.3001.5501)

LCOV安装

```shell
sudo apt install lcov
```

Doxygen安装

```shell
sudo apt install doxygen
```

Cppcheck安装

```shell
sudo apt install cppcheck
```

gcc安装

```shell
sudo apt install gcc
```

gdb安装

```shell
sudo apt install gdb
```

工具安装好后，通过-v或--version来查看是否安装成功。

# VSCode的配置

VSCode在Windows上安装好后，通过安装安装插件来实现环境搭建的功能。

## 插件列表

| 分类            | 插件                                                         | 截图                                                         |
| --------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| C/C++语言支持   | C/C++                                                        | ![C/C++](imag/ccpp.png)                                      |
|                 | C++ Intellisense                                             | ![C++ Intellisense](imag/C++Intellisense.png)               |
| GTest           | C++ TestMate                                                 | ![C++ TestMate](imag/C++TestMate.png)                       |
| CMake支持       | CMake Tools<br/>CMake                                        | ![CMake Tools](imag/cmake.png)                               |
| Doxyge支持      | Doxygen Documentation generation                             | ![Doxygen Documentation generation](imag/DoxygenDocumentationgeneration.png) |
| Git及GitHub支持 | Git Blame<br/>Git Graph<br/>Git History<br/>GitHub Pull Requests and Issues<br/>GitLens — Git supercharged | ![git](imag/git.png)                                         |
| WSL2支持        | Remote - Containers<br/>Remote - SSH<br/>Remote - SSH: Editing Configuration Files<br/>Remote - WSL | ![wsl](imag/wsl.png)                                         |
| python支持      | Pylance<br/>Python                                           | ![python](imag/python.png)                                   |
| 代码风格支持    | Better C++ Syntax                                            | ![Better C++ Syntax](imag/BetterC++Syntax.png)             |
|                 | Prettier - Code formatter                                    | ![Prettier - Code formatter](imag/PrettierCodeformatter.png) |
| 彩色括号显示    | Bracket Pair Colorizer 2                                     | ![Bracket Pair Colorizer 2](imag/BracketPairColorizer2.png) |
| 彩虹缩进显示    | indent-rainbow                                               | ![indent-rainbow](imag/indent-rainbow.png)                   |
| 十六进制编辑    | Hex Editor                                                   | ![Hex Editor](imag/HexEditor.png)                           |
| 汇编支持        | x86 and x86_64 Assembly                                      | ![x86 and x86_64 Assembly](imag/x86andx86_64Assembly.png) |
| 图片支持        | Luna Paint                                                   | ![Luna Paint](imag/LunaPaint.png)                           |
| Markdown        | markdownlint                                                 | ![markdownlint](imag/markdownlint.png)                       |
| Jupyter支持     | Jupyter                                                      | ![Jupyter](imag/Jupyter.png)                                 |
| Todo支持        | Todo Tree                                                    | ![Todo Tree](imag/TodoTree.png)                             |
| 主题和图标      | C/C++ Themes                                                 | ![CC++ Themes](imag/CC++Themes.png)                         |
| 主题和图标      | Dracula Official                                             | ![Dracula Official](imag/DraculaOfficial.png)               |
| 主题和图标      | Fluent Icons                                                 | ![Fluent Icons](imag/FluentIcons.png)                       |
| 主题和图标      | Material Icon Theme                                          | ![Material Icon Theme](imag/MaterialIconTheme.png)         |
| 主题和图标      | Material Product Icons                                       | ![Material Product Icons](imag/MaterialProductIcons.png)   |
| 主题和图标      | vscode-icons                                                 | ![vscode-icons](imag/vscode-icons.png)                       |



## Doxygen片段的配置

在VSCode的settings.json增加Doxygen的修改。通过片段配置，在函数前或文件前输入`/**+回车`，就会补全Doxygen的注释，再进行针对性的修改就可以了。

```json
{
  // 文件注释：自定义模块

  "doxdocgen.file.customTag": [

​    "****************************************************************************",

​    //"@par 修改日志:",

​    // "<table>",

​    // "<tr><th>Date    <th>Version <th>Author <th>Description",

​    // "<tr><td>{date} <td>1.0   <td>{author}  <td>内容",

​    // "</table>",

  ],

  "doxdocgen.generic.authorEmail": "xxx@xxx.com",

  "doxdocgen.generic.authorName": "xxx",

  // 文件注释的组成及其排序

  "doxdocgen.file.fileOrder": [

​    "custom",

​    "file", // @file

​    "brief", // @brief 简介

​    "author", // 作者

​    "version", // 版本

​    "date", // 日期

​    "empty", // 空行

​    "copyright", // 版权

​    "custom" // 自定义

  ],

  // 下面时设置上面标签tag的具体信息

  "doxdocgen.file.fileTemplate": "@file{indent:10}{name}",

  "doxdocgen.file.versionTag": "@version 1.0",

  "doxdocgen.generic.authorTag": "@author  {author} ({email})",

  // 日期格式与模板

  "doxdocgen.generic.dateFormat": "YYYY-MM-DD",

  "doxdocgen.generic.dateTemplate": "@date{indent:10}{date}",

  "doxdocgen.generic.paramTemplate": "@param{indent:10}{param}{indent:20}说明",

  "doxdocgen.generic.returnTemplate": "@return{indent:10}{type} ",

  "doxdocgen.generic.splitCasingSmartText": true,

  "doxdocgen.generic.briefTemplate": "@brief{indent:10}{text}",

  // 根据自动生成的注释模板（目前主要体现在函数注释上）

  "doxdocgen.generic.order": [

​    "custom",

​    "brief",

​    "empty",

​    "tparam",

​    "param",

​    "return",

​    "custom"

  ],

  "doxdocgen.generic.customTags": [

​    "****************************************************************************"

  ],
}
```

# 示例工程

示例工程采用了静态库+GTest测试的方式来演示。包含了带子文件夹的静态库和不带子文件夹的静态库，分别为编译为两个静态库。测试用例编译为可执行文件。

静态库采用了C语言，GTest采用了C++。

![file_tree](imag/file_tree.png)

# 遗留问题

目前的配置中，GCov针对静态库文件无法进行分析
