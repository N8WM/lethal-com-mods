@echo off
SET "gameDir=%~dp0"
SET "modsDir=%gameDir%BepInEx"
SET "disabledModsDir=%gameDir%disabled_mods"

:: Check if the disabled_mods directory exists, if not create it
if not exist "%disabledModsDir%" (
    mkdir "%disabledModsDir%"
)

:: Check if the mods are currently enabled (BepInEx is in the game directory)
if exist "%modsDir%" (
    echo Disabling mods...
    move "%modsDir%" "%disabledModsDir%"
    if "%ERRORLEVEL%"=="0" (
        echo Mods are now disabled.
    ) else (
        echo Failed to disable mods.
    )
) else (
    :: Check if the mods are currently disabled (BepInEx is in the disabled_mods directory)
    if exist "%disabledModsDir%\BepInEx" (
        echo Enabling mods...
        move "%disabledModsDir%\BepInEx" "%gameDir%"
        if "%ERRORLEVEL%"=="0" (
            echo Mods are now enabled.
        ) else (
            echo Failed to enable mods.
        )
    ) else (
        echo Mods are not found in either the game directory or the disabled_mods directory.
    )
)
pause
