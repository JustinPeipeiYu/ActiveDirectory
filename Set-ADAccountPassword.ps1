Set-ADAccountPassword `
    -Identity jsmith `
    -NewPassword (ConvertTo-SecureString "TempP@ss123!" -AsPlainText -Force) `
    -Reset
    
Set-ADUser jsmith -ChangePasswordAtLogon $true

Unlock-ADAccount -Identity jsmith