@REM run as Administrator
@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads

set SEVENZIP=C:\"Program Files"\7-Zip\7z.exe
set QEMU_DIR=%DOWNLOADS_DIR%\qemu-w64-portable-20240822
set QEMU_EXE=%QEMU_EXE%\qemu-system-aarch64.exe

if not exist %QEMU_EXE% (
cd /d "%TEMP%" &&^
%SystemRoot%\System32\curl.exe "https://github.com/dirkarnez/qemu-portable/releases/download/20240822/qemu-w64-portable-20240822.zip" -L -O  &&^
%SEVENZIP% x qemu-w64-portable-20240822.zip -o"%QEMU_DIR%" -y &&^
del qemu-w64-portable-20240822.zip
)

if exist %QEMU_EXE% (
  echo qemu %QEMU_EXE% found
  qemu-system-aarch64 -M virt -cpu cortex-a72 -nographic -kernel main.elf
)
