@echo off
set malwarefound=0
echo Bu araci "resources" klasorune koymalisiniz!
echo [MalScanner] Hos geldiniz. Taramaya baslamak icin "enter" tusuna basin.
pause

:: Create/clear the log file
echo Backdoor Tarama Sonuclari > backdoor_results.txt
echo Tarih: %date% %time% >> backdoor_results.txt
echo ------------------------------------ >> backdoor_results.txt

echo [MalScanner] Malware A kontrol ediliyor
findstr /s /m "random_char" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo Malware A bulundu: >> backdoor_results.txt
findstr /s /m "random_char" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] Malware B kontrol ediliyor
findstr /s /m "Enchanced_Tabs" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo Malware B bulundu: >> backdoor_results.txt
findstr /s /m "Enchanced_Tabs" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] Malware C kontrol ediliyor
findstr /s /m "helpCode" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo Malware C bulundu: >> backdoor_results.txt
findstr /s /m "helpCode" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] Malware D kontrol ediliyor -- Cfx varsayilan dosyalarda olabilir, yanlis pozitif olabilir
findstr /s /m "assert(load(" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo Malware D bulundu: >> backdoor_results.txt
findstr /s /m "assert(load(" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] Malware E kontrol ediliyor
findstr /s /m "\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo Malware E bulundu: >> backdoor_results.txt
findstr /s /m "\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] Malware F kontrol ediliyor
findstr /s /m "helperServer" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo Malware F bulundu: >> backdoor_results.txt
findstr /s /m "helperServer" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] Malware G (loadstring) kontrol ediliyor
findstr /s /m "loadstring" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo Malware G bulundu: >> backdoor_results.txt
findstr /s /m "loadstring" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] Malware I (require) kontrol ediliyor
findstr /s /m "require(" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo Malware I bulundu: >> backdoor_results.txt
findstr /s /m "require(" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] Malware L (Base64) kontrol ediliyor
findstr /s /m "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo Malware L bulundu: >> backdoor_results.txt
findstr /s /m "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] Malware M (Discord Token) kontrol ediliyor
findstr /s /m "NjUx|Mzc|ODcz|YzA" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo Malware M bulundu: >> backdoor_results.txt
findstr /s /m "NjUx|Mzc|ODcz|YzA" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] Malware O (HTTP veri) kontrol ediliyor
findstr /s /m "PerformHttpRequest" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo Malware O bulundu: >> backdoor_results.txt
findstr /s /m "PerformHttpRequest" *.lua >> backdoor_results.txt
)
echo ------------------------------------
echo [MalScanner] Malware P (Remote script) kontrol ediliyor
findstr /s /m "http.Get" *.lua
if %errorlevel%==0 (
set malwarefound=1
echo Malware P bulundu: >> backdoor_results.txt
findstr /s /m "http.Get" *.lua >> backdoor_results.txt
)
echo ------------------------------------

if %malwarefound%==1 (
echo [MalScanner] Kotu amacli kod bulundu! Sonuclar kesin degildir Kaynaklara goz atmaniz onerilir.
echo Sonuclar backdoor_results.txt dosyasina kaydedildi.
) else (
echo [MalScanner] Kotu amacli kod bulunmadi.
echo Sonuclar backdoor_results.txt dosyasina kaydedildi.
)

pause