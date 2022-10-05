REM run as Administrator
@echo off
cd /d %~dp0
@REM set DOWNLOAD_DIR=%USERPROFILE%\Downloads
@REM set DOWNLOAD_DIR_LINUX=%DOWNLOAD_DIR:\=/%

@REM SET PATH=^
@REM %DOWNLOAD_DIR%\PortableGit\bin;^
@REM %DOWNLOAD_DIR%\x86_64-8.1.0-release-win32-seh-rt_v6-rev0;^
@REM %DOWNLOAD_DIR%\x86_64-8.1.0-release-win32-seh-rt_v6-rev0\bin;^
@REM %DOWNLOAD_DIR%\cmake-3.22.2-windows-x86_64\bin;

@REM D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64;^
@REM D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;^

set PATH=^
D:\Softwares\cmake-3.23.0-rc1-windows-x86_64\bin;


@REM cmake.exe -G"MinGW Makefiles" ^
@REM -DCMAKE_BUILD_TYPE=Debug ^
@REM -B./build &&^
@REM cd build &&^
@REM cmake --build . &&^
@REM echo "Successful build"
@REM pause

cmake -G "Visual Studio 16 2019" ^
-A x64 ^
-B./build &&^
cd build
cmake --build . --target ALL_BUILD --config Release -- /nologo /verbosity:minimal /maxcpucount
pause