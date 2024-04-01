set REG_KEY=HKEY_CURRENT_USER\SOFTWARE\Plex, Inc.
set EXPORT_PATH=F:\Plex Reinstall\Plex_Registry_Backup.reg

echo Exporting registry key %REG_KEY% to %EXPORT_PATH% ...

reg export "%REG_KEY%" "%EXPORT_PATH%"

if %errorlevel% equ 0 (
    echo Registry key exported successfully.
) else (
    echo An error occurred while exporting the registry key.
)
