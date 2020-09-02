# compiler

******************************************
*        E-01 thrift compiler for rust   *
*             Version : 0.1.0            *
******************************************

# 目标
* 实现thrift IDL文件到异步rust代码的生成，提高生成速度
  注：要使用异步rust，参见：https://github.com/astronaut0131/rs



# 使用方法
1 屏蔽其他语言生成  
    cd compiler/cpp 编辑CMakeLists.txt,将其他语言的生成注释掉，类似如下所示：

    # THRIFT_ADD_COMPILER(py      "Enable compiler for Python 2.0" ON)
    # THRIFT_ADD_COMPILER(rb      "Enable compiler for Ruby" ON)
    THRIFT_ADD_COMPILER(rs      "Enable compiler for Rust" ON)
    # THRIFT_ADD_COMPILER(st      "Enable compiler for Smalltalk" ON)
    # THRIFT_ADD_COMPILER(swift   "Enable compiler for Cocoa Swift" ON)

2 编辑完成后生成新的Makefile文件
    在compiler/cpp 目录下执行make 命令

3 安装thrift
    cd compiler,依次执行make; make install命令；（make install命令需要root权限)

4 生成文件
    执行thrift --gen rs XXX.thrift，完成后将在路径下生成XXX.rs


