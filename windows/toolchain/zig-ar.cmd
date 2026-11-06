@echo off
rem %* is expanded once: an if/else holding it twice can pass cmd's 8191-character line limit.
setlocal
set "ZIG=%ZIG_EXE%"
if not defined ZIG_EXE set "ZIG=%~dp0..\..\tools\venv\Lib\site-packages\ziglang\zig.exe"
"%ZIG%" ar %*
