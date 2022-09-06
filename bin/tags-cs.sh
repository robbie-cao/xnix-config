#!/bin/bash
# Generate cscope files

echo > cscope.files

find `pwd` -type f                         \
    -iname '*.[ch]' -o -name '*.cpp'       \
    -o -name '*.java' -o -name '*.aidl'    \
    -o -name '[Mm]akefile' -o -name '*.mk' \
    -o -name '*.S'                         \
    -o -name '*.sh'                        \
    -o -name '*.s51'                       \
    -o -name '*.xml'                       \
    ! -path '*/build/*'                    \
    >> cscope.files

cscope -qkb -i cscope.files

