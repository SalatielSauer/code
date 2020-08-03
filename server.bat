@ECHO OFF

set SAUER_BIN=bin

IF /I "%PROCESSOR_ARCHITECTURE%" == "amd64" (
    set SAUER_BIN=bin64
)
IF /I "%PROCESSOR_ARCHITEW6432%" == "amd64" (
    set SAUER_BIN=bin64
)

start %SAUER_BIN%\tomatenquark.exe "-q$HOME\My Games\Tomatenquark" -gserver-log.txt -d %*
