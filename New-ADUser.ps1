$name = Read-Host "Enter Full Name" -AsSecureString
#$gname = Read-Host "Enter Given Name" -AsSecureString
#$sname = Read-Host "Enter Surname" -AsSecureString
#$pwd = Read-Host "Enter Password" -AsSecureString
#Get-Content scriptname.ps1 | Set-Clipboard

New-ADUser `
-Name "Jean Luc Picard" `
-GivenName "Jean" `
-Surname "Picard" `
-SamAccountName "jlpicard" `
-UserPrincipalName "jlpicard@yourdomain.local" `
-Path "OU=Users,DC=yourdomain,DC=local" `
-AccountPassword ($pwd) `
-ChangePasswordAtLogon $true `
-PasswordNeverExpires $true `
-Enabled $true `
