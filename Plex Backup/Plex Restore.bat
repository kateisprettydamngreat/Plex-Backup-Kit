set SOURCE=F:\Plex Reinstall\Plex Media Server
set DESTINATION=%LOCALAPPDATA%

echo Copying folder from %SOURCE% to %DESTINATION% ...

xcopy "%SOURCE%" "%DESTINATION%\" /E /I /Y

if %errorlevel% equ 0 (
    echo Folder copied successfully.
) else (
    echo An error occurred while copying the folder.
)
