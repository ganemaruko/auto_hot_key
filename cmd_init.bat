@REM 文字コードの変更
chcp 65001
doskey alias=if "$1"=="" (doskey /macros) else (doskey $*)
doskey unalias=doskey $*=
doskey h=doskey /history $*
doskey history=doskey /history $*
doskey ls=dir /w $*
doskey pwd=echo %CD%
doskey ll=dir /ad $*
doskey lv=more /E $*
doskey cat=type $*
doskey cp=if exist $*\nul (echo d $b xcopy /E $*) else (copy $*) 
doskey mv=move $*
doskey touch=type nul $g $*
doskey rm=if exist $*\nul (rd /s /q $*) else (del /q $*)
doskey ifconfig=ipconfig
doskey open=explorer
doskey ps=tasklist $*
doskey kill=Taskkill /PID $* /F
cd C:\Users\kogan