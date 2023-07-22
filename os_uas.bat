@echo off

echo ****************************************
echo SELAMAT DATANG DI SISTEM AKADEMIK UNISS
echo ****************************************
pause
cls

echo ****************************************
echo Silahkan login terlebih dahulu !
echo ****************************************
pause
cls

REM variable untuk loin
set username:rizkhika
set password:123
 
:login
cls
echo Masukan username dan password:
set /p "username=username:"
set /p "password=password:"
if %password%==%password% goto menu_akademik (
) else (
   echo login gagal! password yang anda masukan salah. Silahkan Login kembali. 
   pause
   goto login
)

:menu_akademik
cls
echo ****************************************
echo SELAMAT DATANG DI MENU AKADEMIK
echo ****************************************
echo silahkan pilih menu akademik :
echo [1.] Prodi Akademik Uniss
echo [2.] Sitem Penilaian Mahasiswa
echo [3.] Aplikasi Pembelajaran Akademik
echo [4.] Setting

set /p l1=masukan pilihan anda:

if %l1%==1 goto Prodi_Akademik
if %l1%==2 goto Sistem_Penilaian_Mahasiswa
if %l1%==3 goto Aplikasi_Pembelajaran_Akademik
if %l1%==4 goto Setting (
) else (
    echo pilihan anda tidak tersedia. silahkan masukan ulang pilihan anda.
    pause
    goto menu akademik
)

:Prodi_Akademik 
cls
echo ================================
echo Daftar Prodi Akademik
echo ================================
echo Akutansi
echo Hukum
echo psikologi
Echo Manajemen
set /p ak=klik enter untuk kembali ke menu_akademik
goto menu_akademik

:Sistem_Penilaian_Mahasiswa
cls
echo ================================
echo Presentase Penilaian Mahasiswa
echo ================================
echo [*]presentase kehadiran 10%
echo [*]presentase tugas 15%
echo [*]presentase praktik 25%
echo [*]presentase uts 25%
echo [*]presentase uas 25%
set /p ak=klik enter untuk kembali ke menu_akademik
goto menu_akademik

:Aplikasi_Pembelajaran_Akademik
cls
echo ================================
echo Aplikasi Pembelajaran Akademik online
echo ================================
echo [1]Google Meet
echo [2]Zoom Meet
echo [0]Kembali ke Menu
set /p l2=Masukkan Pilihan anda...?
if %l2%==1 goto gmeet
if %l2%==2 goto zmeet
if %l2%==0 goto menu
else (
    echo pilihan anda tidak tersedia..!
    pause
    goto Aplikasi_Pembelajaran_Akademik
)

:gmeet
cls
start https://meet.google.com/
pause
goto Aplikasi_Pembelajaran_Akademik
:zmeet
cls
start https://zoom.us/
pause
goto Aplikasi_Pembelajaran_Akademik
:setting
cls
rem =================================turn off========================================
echo Pilih menu:
echo [1]. Shutdown
echo [2]. Restart
echo [0]. Back to Menu 
echo.

set /p "hy=Masukkan pilihan Anda: "

REM Pemilihan menu
if "%hy%"=="1" (
    call :shutdown
) else if "%hy%"=="2" (
    call :restart
) else if "%hy%"=="0" (
    goto menu
) else (
    echo Pilihan tidak valid. Silakan coba lagi.
    pause
    goto setting
)

REM Sub-rutin untuk melakukan shutdown
:shutdown
cls
echo Menjalankan perintah shutdown...
shutdown /s /t 0
goto setting

REM Sub-rutin untuk melakukan restart
:restart
cls
echo Menjalankan perintah restart...
shutdown /r /t 0
goto setting

































