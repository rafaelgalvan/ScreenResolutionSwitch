@echo off
setlocal enabledelayedexpansion

ECHO  ________________________________
ECHO "       _____ _____   _____      "
ECHO "      / ____|  __ \ / ____|     "
ECHO "     | (___ | |__) | |          "
ECHO "      \___ \|  _  /| |          "
ECHO "      ____) | | \ \| |____      "
ECHO "     |_____/|_|  \_\\_____|     "
ECHO "                                "
ECHO "   Screen Resolution Changer    "
ECHO "________________________________"
ECHO.
ECHO    Using QRES by Anders Kjersem
ECHO  ________________________________
ECHO.

:: define the 'array' entries
set width[1]=1920
set height[1]=1080
set refresh[1]=60

set width[2]=1920
set height[2]=1080
set refresh[2]=144

set width[3]=2560
set height[3]=1440
set refresh[3]=60

set width[4]=2560
set height[4]=1440
set refresh[4]=144

set width[5]=3840
set height[5]=2160
set refresh[5]=60

set width[6]=3840
set height[6]=2160
set refresh[6]=75

set width[7]=3840
set height[7]=2160
set refresh[7]=144

:: if any parameter was passed, apply direct
if not "%~1"=="" (
    set choice=%~1
    goto APPLY
)

:MENU
echo Choose the resolution:
echo -------------------------
echo 1. 1080p 60Hz
echo 2. 1080p 144Hz
echo 3. 1440p 60Hz
echo 4. 1440p 144Hz
echo 5. 4K 60Hz
echo 6. 4K 75Hz
echo 7. 4K 144Hz
echo -------------------------
set /p choice=Type the option number: 

:APPLY
:: Retrieve the values from 'array'
set width=!width[%choice%]!
set height=!height[%choice%]!
set refresh=!refresh[%choice%]!

if "%width%"=="" (
    echo Invalid option.
    exit /b
)

echo -------------------------
ECHO Changing Resolution to %width% x %height% @ %refresh% Hz...

powershell.exe -ExecutionPolicy Bypass -File "ResolutionSwitch.ps1" -Width %width% -Height %height% -Refresh %refresh%

ECHO Done.