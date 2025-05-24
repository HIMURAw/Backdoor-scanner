@echo off
setlocal enabledelayedexpansion

:: Language Selection
echo Select Language / Dil Seciniz:
echo 1. Turkish / Turkce
echo 2. English / Ingilizce
set /p lang_choice=

if "%lang_choice%"=="1" (
    set "msg_welcome=Bu araci 'resources' klasorune koymalisiniz!"
    set "msg_press_enter=Taramaya baslamak icin 'enter' tusuna basin."
    set "msg_checking= kontrol ediliyor"
    set "msg_found= bulundu:"
    set "msg_malware_found=Kotu amacli kod bulundu! Sonuclar kesin degildir Kaynaklara goz atmaniz onerilir."
    set "msg_results_saved=Sonuclar backdoor_results.txt dosyasina kaydedildi."
    set "msg_delete_confirm=Bulunan kotu amacli satirlari silmek istiyor musunuz? (E/H)"
    set "msg_deleting=Satirlar siliniyor..."
    set "msg_deleted=Silindi:"
    set "msg_deletion_complete=Silme islemi tamamlandi."
    set "msg_deletion_cancelled=Silme islemi iptal edildi."
    set "msg_no_malware=Kotu amacli kod bulunmadi."
    set "msg_malware_a=Malware A"
    set "msg_malware_b=Malware B"
    set "msg_malware_c=Malware C"
    set "msg_malware_d=Malware D"
    set "msg_malware_e=Malware E"
    set "msg_malware_f=Malware F"
    set "msg_malware_g=Malware G (loadstring)"
    set "msg_malware_i=Malware I (require)"
    set "msg_malware_l=Malware L (Base64)"
    set "msg_malware_m=Malware M (Discord Token)"
    set "msg_malware_o=Malware O (HTTP veri)"
    set "msg_malware_p=Malware P (Remote script)"
    set "msg_default_warning=Cfx varsayilan dosyalarda olabilir, yanlis pozitif olabilir"
) else (
    set "msg_welcome=You must place this tool in the 'resources' folder!"
    set "msg_press_enter=Press 'enter' to start scanning."
    set "msg_checking= is being checked"
    set "msg_found= found:"
    set "msg_malware_found=Malicious code found! Results are not definitive, it is recommended to check the resources."
    set "msg_results_saved=Results have been saved to backdoor_results.txt"
    set "msg_delete_confirm=Do you want to delete the malicious lines found? (Y/N)"
    set "msg_deleting=Deleting lines..."
    set "msg_deleted=Deleted:"
    set "msg_deletion_complete=Deletion process completed."
    set "msg_deletion_cancelled=Deletion process cancelled."
    set "msg_no_malware=No malicious code found."
    set "msg_malware_a=Malware A"
    set "msg_malware_b=Malware B"
    set "msg_malware_c=Malware C"
    set "msg_malware_d=Malware D"
    set "msg_malware_e=Malware E"
    set "msg_malware_f=Malware F"
    set "msg_malware_g=Malware G (loadstring)"
    set "msg_malware_i=Malware I (require)"
    set "msg_malware_l=Malware L (Base64)"
    set "msg_malware_m=Malware M (Discord Token)"
    set "msg_malware_o=Malware O (HTTP data)"
    set "msg_malware_p=Malware P (Remote script)"
    set "msg_default_warning=May be in default Cfx files, could be false positive"
)

set malwarefound=0
echo %msg_welcome%
echo [MalScanner] %msg_press_enter%
pause

:: Create/clear the log file
echo Backdoor Scan Results > backdoor_results.txt
echo Date: %date% %time% >> backdoor_results.txt
echo ------------------------------------ >> backdoor_results.txt

echo [MalScanner] %msg_malware_a%%msg_checking%
findstr /n /s /m "random_char" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo %msg_malware_a%%msg_found% >> backdoor_results.txt
findstr /n /s /m "random_char" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] %msg_malware_b%%msg_checking%
findstr /n /s /m "Enchanced_Tabs" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo %msg_malware_b%%msg_found% >> backdoor_results.txt
findstr /n /s /m "Enchanced_Tabs" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] %msg_malware_c%%msg_checking%
findstr /n /s /m "helpCode" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo %msg_malware_c%%msg_found% >> backdoor_results.txt
findstr /n /s /m "helpCode" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] %msg_malware_d%%msg_checking% -- %msg_default_warning%
findstr /n /s /m "assert(load(" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo %msg_malware_d%%msg_found% >> backdoor_results.txt
findstr /n /s /m "assert(load(" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] %msg_malware_e%%msg_checking%
findstr /n /s /m "\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo %msg_malware_e%%msg_found% >> backdoor_results.txt
findstr /n /s /m "\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] %msg_malware_f%%msg_checking%
findstr /n /s /m "helperServer" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo %msg_malware_f%%msg_found% >> backdoor_results.txt
findstr /n /s /m "helperServer" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] %msg_malware_g%%msg_checking%
findstr /n /s /m "loadstring" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo %msg_malware_g%%msg_found% >> backdoor_results.txt
findstr /n /s /m "loadstring" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] %msg_malware_i%%msg_checking%
findstr /n /s /m "require(" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo %msg_malware_i%%msg_found% >> backdoor_results.txt
findstr /n /s /m "require(" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] %msg_malware_l%%msg_checking%
findstr /n /s /m "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo %msg_malware_l%%msg_found% >> backdoor_results.txt
findstr /n /s /m "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] %msg_malware_m%%msg_checking%
findstr /n /s /m "NjUx|Mzc|ODcz|YzA" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo %msg_malware_m%%msg_found% >> backdoor_results.txt
findstr /n /s /m "NjUx|Mzc|ODcz|YzA" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] %msg_malware_o%%msg_checking%
findstr /n /s /m "PerformHttpRequest" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo %msg_malware_o%%msg_found% >> backdoor_results.txt
findstr /n /s /m "PerformHttpRequest" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] %msg_malware_p%%msg_checking%
findstr /n /s /m "http.Get" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo %msg_malware_p%%msg_found% >> backdoor_results.txt
findstr /n /s /m "http.Get" *.lua >> backdoor_results.txt
)
echo ------------------------------------

if %malwarefound%==1 (
echo [MalScanner] %msg_malware_found%
echo %msg_results_saved%
echo.
echo %msg_delete_confirm%
set /p delete_choice=
if /i "%delete_choice%"=="E" (
    echo %msg_deleting%
    powershell -Command "Get-Content backdoor_results.txt | Where-Object { $_ -match '^[^:]+:\d+:' } | ForEach-Object { $file = ($_ -split ':')[0]; $line = ($_ -split ':')[1]; $pattern = ($_ -split ':', 3)[2]; if (Test-Path $file) { (Get-Content $file) | Where-Object { $_ -notmatch [regex]::Escape($pattern) } | Set-Content $file; Write-Host ('%msg_deleted% ' + $file + ' - Line ' + $line) } }"
    echo %msg_deletion_complete%
) else (
    echo %msg_deletion_cancelled%
)
) else (
echo [MalScanner] %msg_no_malware%
echo %msg_results_saved%
)

pause