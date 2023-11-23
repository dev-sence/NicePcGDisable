Set-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\MMC\{43668E21-11D1-A1CE-0080C88593A5}" -Name "값 이름" -Value 0
cd C:\Program Files\iSecuService\private
icacls *.sys /deny everyone:f
icacls *.exe /deny everyone:f
