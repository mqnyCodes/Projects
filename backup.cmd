::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBdRTQqNAE+/Fb4I5/jH7euToUVdXeY0RK3a2b+bMK4W8kCE
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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