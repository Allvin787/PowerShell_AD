$file = "D:\temporaryfile.csv" 
(Get-content -Path $file)| Set-content -Path $file -Encoding UTF8
Import-Module ActiveDirectory

#import danych z pliku 
$users = Import-CSV $file
foreach ($user in $users){
$Name = $user.Name
$JobTitle = $user.JobTitle
$Department = $user.Department
$Phone = $userPhone


#wyświetlanie danych z pliku na ekran
write-host "$Name $Department $JobTitle $Phone"

#aktualizacja danych użytkownika
get-aduser -indentity $Name | set-aduser -Department $Department -Title $JobTitle -Description $JobTitle -OfficePhone $Phone
}

#usunięcie pliku tymczasowego
if(Test-Path $file){
Remove-Item $file
}

