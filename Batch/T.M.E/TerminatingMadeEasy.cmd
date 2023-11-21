::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBdRTQqNAE+1EbsQ5+n//NaziGJPeuonK6LJi42rCNkn5H/UIaIAwyhdu/gUFC0JUTq4dx8SjGxwgjy0ec6fvG8=
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
::Zh4grVQjdCyDJGyX8VAjFBdRTQqNAE+/Fb4I5/jH2++Vr0QTVfY2doj227CLBeEA8wvhbZNN
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Terminating Made Easy - by mqnyTech
setlocal enabledelayedexpansion

:: Check if "TerminatingMadeEasy" folder exists on the desktop
set "desktop_folder=%USERPROFILE%\Desktop\TerminatingMadeEasy"
if not exist "!desktop_folder!" (
    echo Error: Make a folder on your desktop "TerminatingMadeEasy" and put the exe in there, for the program to function.
    pause
    exit /b
)

endlocal

:menu
cls
echo Menu Options:
echo 1: Terminate
echo 2: Info
echo 3: Exit

choice /c:123 /n /m "Enter your choice: "

if errorlevel 3 goto noterminate
if errorlevel 2 goto info
if errorlevel 1 goto home

:info
cls
echo Info
echo This program helps you terminate programs easier.
pause > nul
goto menu

:home
cls
echo What process do you want to terminate (Do the .exe after)?
set /p terminateProcess=
echo Are you sure that you want to terminate %terminateProcess%?
echo [Y/N]
set /p doYouWant=
if %doYouWant% == Y goto terminate
if %doYouWant% == N goto noterminate

:terminate
cls
tasklist /fi "imagename eq %terminateProcess%" 2>nul | find /i "%terminateProcess%" >nul
if errorlevel 1 (
echo %terminateProcess% not found. Did you forget the .exe?
pause > nul
goto home
) else (
taskkill /f /im %terminateProcess% > nul
echo Successfully killed %terminateProcess%
pause > nul
exit
)

:noterminate
cls
echo You have aborted the terminating process. Exiting now...
timeout /t 3 /nobreak > nul
exit

pause>nul
