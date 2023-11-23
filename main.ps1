# *.sys 파일에 대한 권한 거부
Get-ChildItem -Path "C:\Program Files\iSecuService\private" -Filter *.sys | ForEach-Object { $_ | ForEach-Object { $_.FullName | Get-Acl | ForEach-Object { $_.Access | Where-Object { $_.FileSystemRights -eq "FullControl" -and $_.IdentityReference -eq "Everyone" } | ForEach-Object { $_.FileSystemRights = "ReadAndExecute"; Set-Acl -Path $_.Path -AclObject $_ } } } }

# *.exe 파일에 대한 권한 거부
Get-ChildItem -Path "C:\Program Files\iSecuService\private" -Filter *.exe | ForEach-Object { $_ | ForEach-Object { $_.FullName | Get-Acl | ForEach-Object { $_.Access | Where-Object { $_.FileSystemRights -eq "FullControl" -and $_.IdentityReference -eq "Everyone" } | ForEach-Object { $_.FileSystemRights = "ReadAndExecute"; Set-Acl -Path $_.Path -AclObject $_ } } } }

# *.sys 파일 삭제
Remove-Item -Path "C:\Program Files\iSecuService\private\*.sys" -Force

# *.exe 파일 삭제
Remove-Item -Path "C:\Program Files\iSecuService\private\*.exe" -Force
