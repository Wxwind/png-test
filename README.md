1.单独构建zlib，然后构建png_shard，最后构建png1Test
2.cmake构建完后请把cmake-build-debug/output里的libpng.dll,libpng16d.dll,libzlib.dll拷贝到cmake-build-debug目录下
3.终端输入 .\cmake-build-debug\png1test.exe 1 1 .\aaanosrgb32embbed.png

代码源自libpng的example，仅增加了png_get_gAMA和png_get_sRGB读取（但是没读出来任何值）。

aaa开头的图片是在线性工作空间下(ps-颜色管理-工作空间0灰度系数为1)制作的，bbb则是在sRGB空间下制作。