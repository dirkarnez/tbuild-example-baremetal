#!/bin/sh
export PATH="/mingw64/bin:/usr/local/bin:/usr/bin:/bin:$USERPROFILE/Downloads:$USERPROFILE/Downloads/qemu-w64-portable-20240822"

qemu-system-aarch64 -M virt -cpu cortex-a72 -nographic -kernel main.elf
