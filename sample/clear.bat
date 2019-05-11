cd /d %~dp0

del /q doc\*.*
del /q src\*.*

@echo off
echo ...
:_loop
echo : copy reference  (リファレンスをコピーしますか)　? 
set /p a="Y or N :"
if "%a%"=="Y" goto :_copyref
if "%a%"=="N" goto :_end
goto :_loop

:_copyref
copy ref\doc\*.* doc\*.*
copy ref\src\*.* src\*.*
:_end
pause