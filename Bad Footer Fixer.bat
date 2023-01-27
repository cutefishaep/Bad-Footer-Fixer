@ECHO off
TITLE Bad Footer Fixer
mode con: cols=41 lines=20
set WORKINGDIR=""
set WORKINGDIR=%~dp0
set input=%WORKINGDIR%input\
set tools=%WORKINGDIR%tools\
:MENU
CLS
@ECHO off
cd %WORKINGDIR%
ECHO.=========================================
ECHO.=           Bad Footer Fixer            =
ECHO.=          version 1.0 STABLE           =
ECHO.=========================================
ECHO.=========================================
ECHO.= 1. Fix All (.JPG AND .PNG)            =
ECHO.= 2. Sharpen (Coming Soon)              =
ECHO.= 3. Help                               =
ECHO.= 4. About                              =
ECHO.=========================================
ECHO.=                0. Exit                =
ECHO.=========================================

:CHOICE_1
set choice_1=
set /p choice_1=Your choice: 
if /i "%choice_1%"=="1" goto FIXALL
if /i "%choice_1%"=="2" goto SHARPEN
if /i "%choice_1%"=="3" goto HELP 
if /i "%choice_1%"=="4" goto ABOUT
if /i "%choice_1%"=="0" exit
goto MENU
:ABOUT
cls
ECHO.=========================================
ECHO.=   Thanks for using Bad Footer Fixer   =
ECHO.=     Made with love by cutefish.ae     =
ECHO.=========================================
ECHO.=   I made this tool because im using   =
ECHO.=      Oldest after effect version      =
ECHO.=       and the bad footer error        =
ECHO.=            keep showing up            =
ECHO.=========================================
ECHO.=      Follow my tiktok if you want     =
ECHO.=========================================
pause
goto MENU
 
 
:FIXALL
cls
IF NOT EXIST "%input%*.jpg" (
ECHO.=========================================
ECHO.=  ERROR : PUT UR IMAGE FILE TO /input  =
ECHO.=========================================
pause
goto MENU
) ELSE (
ECHO.=========================================
ECHO.=             Listing  file             =
ECHO.=========================================
cd %input% 
dir /B
ECHO.=========================================
ECHO.=             listing done              =
ECHO.=========================================
timeout /T 2 > nul
cls
ECHO.=========================================
ECHO.=             Fixing Photo              =
ECHO.=========================================
"%tools%nconvert" -quiet -overwrite -D -out jpeg "%input%*jpg" *.jpg
timeout 1 > nul
"%tools%nconvert" -quiet -overwrite -D -out png "%input%*png" *.png
cls
ECHO.=========================================
ECHO.=                Done..                 =
ECHO.=========================================

timeout /T 1 > nul
cls
ECHO.=========================================
ECHO.=       Check your /input file          =
ECHO.=========================================
timeout /T 5 > nul
cls
 goto MENU
)
 
 
 :SHARPEN
ECHO.=========================================
ECHO.=             Coming soon               =
ECHO.=          Sharpen & Unsharp            =
ECHO.=========================================

timeout 3 > nul
cls
goto MENU

:HELP
ECHO.=========================================
ECHO.=              HELP PAGE                =
ECHO.=            Support page               =
ECHO.=========================================
ECHO.=                                       =
ECHO.=             [HOW TO USE]              =
ECHO.=                                       =
ECHO.= 1. PUT YOUR BROKEN PACKAGE TO /input  =
ECHO.= 2. OPEN Bad Footer Fixer.exe          =
ECHO.= 3. SELECT 1 THEN ENTER                =
ECHO.= 4. AND BOOM, ALL OF YOU PICTURE HAS   =
ECHO.=    BEEN FIXED                         =
ECHO.= 5. JUST IMPORT IT TO AFTER EFFECT     =
ECHO.=    LIKE NORMAL                        =
ECHO.=                                       =
ECHO.=========================================
ECHO.=                                       =
ECHO.=             [KNOWN ERROR]             =
ECHO.=                                       =
ECHO.= 1.ERROR : PUT UR IMAGE FILE TO /input =
ECHO.=  - PUT UR PHOTO TO /input             =
ECHO.=                                       =
ECHO.=========================================

pause
cls
goto MENU