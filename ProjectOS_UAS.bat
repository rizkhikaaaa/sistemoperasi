@echo off

REM Variable untuk Login
set username=rizkhika
set password=123

REM loop login
:login
cls
echo Masukan username dan password:
set /p "inusername=Username: "
set /p "inpassword=Password: "
if %inpassword%==%password% goto menu (
) else (
    echo  Username atau password salah! Silahkan login lagi
    goto login
)

:menu 
cls
echo =======================
echo =======================
echo pilih menu :
echo [1.] Paket Telepon
echo [2.] Paket Internet
echo [3.] Paket SMS
echo [4.] Kembali


set /p "menu_choice=masukan pilihan anda:"

REM Pemilihan menu
if %menu_choice%==1 goto paket_telepon
if %menu_choice%==2 goto paket_Internet
if %menu_choice%==3 goto paket_SMS
if %menu_choice%==4 goto kembali  (
) else (
    echo pilihan anda tidak tersedia. silahkan masukan ulang
    pause
    goto menu
)

:paket_telepon
cls
echo ======================
echo daftar paket Telepon
echo ======================
echo  Harian 1000 24 jam
echo  Mingguan 5000 7 hari
echo  Unlimited 25000 1 bulan
set /p hj=klik enter untuk kembali ke menu
goto menu

:paket_internet
cls
echo ======================
echo daftar paket Internet
echo ======================
echo  Harian 2000 24 jam
echo  Mingguan 150000 7 hari
echo  Unlimited 60000 1 bulan
set /p hj=klik enter untuk kembali ke menu
goto menu

:paket_sms
cls
echo ======================
echo daftar paket Internet
echo ======================
echo  Harian 1500 200 SMS/2jam
echo  Mingguan 5000 150 SMS/7 hari
echo  Unlimited 10000 300SMS/bulan
set /p hj=klik enter untuk kembali ke menu
goto menu

:kembali
cls





























