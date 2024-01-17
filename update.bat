@ECHO OFF
SET "gameDir=%~dp0"
SET "modsDir=%gameDir%BepInEx"
SET "disabledModsDir=%gameDir%disabled_mods"
SET modsWereDisabled=0

:: Check if the disabled_mods directory and mods are present
IF NOT EXIST "%disabledModsDir%" (
    MKDIR "%disabledModsDir%"
)

:: If mods are disabled, enable them for the git pull
IF EXIST "%disabledModsDir%\BepInEx" (
    ECHO Mods are disabled, enabling them to avoid merge conflicts...
    MOVE /Y "%disabledModsDir%\BepInEx" "%gameDir%"
    IF "%ERRORLEVEL%"=="0" (
        SET modsWereDisabled=1
        ECHO Mods enabled successfully.
    ) ELSE (
        ECHO Failed to enable mods, aborting git pull to avoid potential conflicts.
        PAUSE
        GOTO END
    )
)

ECHO Pulling the most recent changes from N8WM/lethal-com-mods...
ECHO.
git pull
ECHO.

:: If mods were initially disabled, re-disable them
IF "%modsWereDisabled%"=="1" (
    ECHO Re-disabling mods...
    MOVE /Y "%modsDir%" "%disabledModsDir%"
    IF "%ERRORLEVEL%"=="0" (
        ECHO Mods disabled successfully.
    ) ELSE (
        ECHO Failed to re-disable mods.
    )
)

:END
PAUSE
