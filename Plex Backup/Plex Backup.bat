set SOURCE=%LOCALAPPDATA%\Plex Media Server
set DESTINATION=F:\Plex Reinstall\Plex Media Server
set EXCLUDE_FOLDER=cache

echo Copying folder from %SOURCE% to %DESTINATION% ...

robocopy "%SOURCE%" "%DESTINATION%" /E /XD "%EXCLUDE_FOLDER%" /NP /TEE /LOG:"%TEMP%\robocopy_log.txt"

if %errorlevel% equ 0 (
    echo Folder copied successfully.
) else (
    echo An error occurred while copying the folder.
)