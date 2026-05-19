@echo off
REM ============================================
REM Garuda Win11 Setup Launcher
REM Script untuk membuka setup.exe otomatis
REM ============================================

echo [INFO] Mencari setup.exe di drive...
set found=0

for %%d in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%d:\setup.exe (
        echo [INFO] Setup.exe ditemukan di drive %%d:
        start "" "%%d:\setup.exe"
        set found=1
        goto :done
    )
)

:done
if %found%==0 (
    echo [ERROR] setup.exe tidak ditemukan. Pastikan ISO Windows 11 sudah di-mount.
) else (
    echo [INFO] Windows 11 Setup dibuka.
)
pause
