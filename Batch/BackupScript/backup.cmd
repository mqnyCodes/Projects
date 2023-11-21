@echo off
title Backup Script - by mqnyCodes
cls
:home
echo.
echo.
echo Which folder do you want to backup? (Path)
set /p folder=
if exist %folder% goto exist
if not exist %folder% goto noexist

:exist
echo Exists. Now where do you want it to backup to? (Path)
set /p destination=
if exist %destination% goto existdestination
if not exist %destination% goto notexistdestination
pause > nul
exit

:noexist
echo Doesn't exist.
pause > nul
cls
goto home
exit

:existdestination
echo Destination exists. Copying now.
xcopy %folder% %destination% /E > nul
echo Copying done.
echo Check your destination folder :D
echo Goodbye.
pause > nul
exit

:notexistdestination
echo Destination does not exist.
pause > nul
goto exist

pause > nul
