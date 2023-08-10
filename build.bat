@echo off
setlocal

rem add MSVC in PATH
call "%ProgramFiles(x86)%\Microsoft Visual Studio\2017\Community\Common7\Tools\VsMSBuildCmd.bat"

rem add Perl in PATH; it's needed for OpenSSL build
set "PERL_PATH=C:\Perl\perl\bin"
set "PATH=%PERL_PATH%;%PATH%"

rem switch to ethminer's source folder
cd "%~dp0\ethminer\"

if not exist "build\" mkdir "build\"

rem For CUDA 9.x pass also `-T v140`
cmake -G "Visual Studio 15 2017 Win64" -H. -Bbuild -DETHASHCL=ON -DETHASHCUDA=ON -DAPICORE=ON ..
cmake --build . --config Release --target package

endlocal
pause