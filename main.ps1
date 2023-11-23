# *.sys 파일에 대한 권한 거부
Get-ChildItem -Path "C:\Program Files\iSecuService\private" -Filter *.sys | ForEach-Object { $_ | Deny-NTFSAccess -Account "Everyone" -AccessType Deny -AppliesTo ThisFolderSubfoldersAndFiles -AccessRights FullControl }

# *.exe 파일에 대한 권한 거부
Get-ChildItem -Path "C:\Program Files\iSecuService\private" -Filter *.exe | ForEach-Object { $_ | Deny-NTFSAccess -Account "Everyone" -AccessType Deny -AppliesTo ThisFolderSubfoldersAndFiles -AccessRights FullControl }
