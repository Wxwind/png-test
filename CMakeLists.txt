cmake_minimum_required(VERSION 3.29)
project(png1test)

set(CMAKE_CXX_STANDARD 20)

cmake_path(SET ZLIB_ROOT "${PROJECT_SOURCE_DIR}/library/zlib-1.3.1")
cmake_path(SET ZLIB_LIBRARY "${CMAKE_CURRENT_BINARY_DIR}/output/zlib/libzlib.dll.a")
add_subdirectory(library/zlib-1.3.1 output/zlib)
add_subdirectory(library/lpng1643 output/lpng)

add_executable(png1test main.cpp)

target_link_libraries(png1test PRIVATE ${ZLIB_LIBRARIES} png_shared)
target_link_options(png1test PRIVATE -static)