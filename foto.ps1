Import-Module ActiveDirectory
$photo = [byte[]](Get-Content D:\SERAFINANNA.JPG -Encoding byte)
Set-ADUser a.serafin -Replace @{thumbnailPhoto=$photo}