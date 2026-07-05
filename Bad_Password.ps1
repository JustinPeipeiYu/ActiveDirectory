Set-ADUser -Identity jsmith -passwordneverexpires $true
Set-ADUser -Identity jsmith -ChangePasswordAtLogon $false