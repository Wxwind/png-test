# test.cmake.in

# Copyright (c) 2024 Cosmin Truta
# Copyright (c) 2016 Glenn Randers-Pehrson
# Written by Roger Leigh, 2016
#
# Use, modification and distribution are subject to
# the same licensing terms and conditions as libpng.
# Please see the copyright notice in png.h or visit
# http://libpng.org/pub/png/src/libpng-LICENSE.txt
#
# SPDX-License-Identifier: libpng-2.0

set(TEST_OPTIONS "--exhaustive;--list-combos;--log")
set(TEST_FILES "D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/basn0g01.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/basn0g02.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/basn0g04.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/basn0g08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/basn0g16.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/basn2c08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/basn2c16.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/basn3p01.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/basn3p02.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/basn3p04.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/basn3p08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/basn4a08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/basn4a16.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/basn6a08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/basn6a16.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ftbbn0g01.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ftbbn0g02.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ftbbn0g04.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ftbbn2c16.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ftbbn3p08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ftbgn2c16.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ftbgn3p08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ftbrn2c08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ftbwn0g16.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ftbwn3p08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ftbyn3p08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ftp0n0g08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ftp0n2c08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ftp0n3p08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ftp1n3p08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ibasn0g08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ibasn0g16.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ibasn2c08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ibasn2c16.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ibasn3p08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ibasn4a08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ibasn4a16.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ibasn6a08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/ibasn6a16.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/iftbbn2c16.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/iftbbn3p08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/iftbgn2c16.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/iftbgn3p08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/iftbrn2c08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/iftbwn0g16.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/iftbwn3p08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/iftbyn3p08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/iftp0n0g08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/iftp0n2c08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/iftp0n3p08.png;D:/code_projs/cpp/pngtest/library/lpng1643/contrib/pngsuite/iftp1n3p08.png")

foreach(file ${TEST_FILES})
  file(TO_NATIVE_PATH "${file}" native_file)
  list(APPEND NATIVE_TEST_FILES "${native_file}")
endforeach()

# Add the directory containing libpng to the PATH (Windows only)
if(WIN32)
  get_filename_component(LIBPNG_DIR "${LIBPNG}" PATH)
  file(TO_NATIVE_PATH "${LIBPNG_DIR}" LIBPNG_DIR)
  set(ENV{PATH} "${LIBPNG_DIR};$ENV{PATH}")
endif()

message("Running ${TEST_COMMAND}" ${TEST_OPTIONS} ${NATIVE_TEST_FILES})
execute_process(COMMAND "${TEST_COMMAND}" ${TEST_OPTIONS} ${NATIVE_TEST_FILES}
                RESULT_VARIABLE TEST_STATUS)
if(TEST_STATUS)
  message(FATAL_ERROR "Returned failed status ${TEST_STATUS}!")
endif()
