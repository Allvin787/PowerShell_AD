$Path=Read-Host Enter folder
get-childitem $Path -recurse | get-acl | Format-List | Out-File "d:\output.txt"
