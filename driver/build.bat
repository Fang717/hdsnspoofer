@echo off
setlocal

rem Set WDK environment
call "%ProgramFiles(x86)%\Windows Kits\10\Tools\%Platform%\devcon.bat"

rem Compile the driver using MSBuild
MSBuild.exe hdsnspoofer.vcxproj /p:Configuration=Release;Platform=%Platform%

endlocal
