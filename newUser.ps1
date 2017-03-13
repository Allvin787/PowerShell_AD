$File = "D:\Script\User11.csv"
(Get-Content -Path $File )| Set-Content -Path $File  -Encoding UTF8 
Import-Module ActiveDirectory
$CSV=Import-CSV -Path $File
$Company = "TechniSat Automotive Sp. z o.o."
$Fax = "+48 71 310 40 40"
$PostalCode = "55-120"
$CSV|New-ADUser -ChangePasswordAtLogon $true -AccountPassword(ConvertTo-SecureString 'p@ssw0rd' -AsPlainText -force) -passThru -Company $Company -Fax $Fax -PostalCode $PostalCode -Enabled $True 

for ($i=0;$i -lt 1000; $i++)
{
        echo "Wybierz grupe/dzial pracownika: "
        echo "
	1 - Accounting / FINANSE
	
	2 - Administrators_AM
	
	3 - Directors / DYREKCJA 
	
	4 - Final assembly / MONTAŻ KOŃCOWY
	
	5 - Human Resources / PERSONALNY
	
	6 - IT
	
	7 - Logistics / LOGISTYKA
	
	8 - Maintenance / UTRZYMANIE RUCHU
	
	9 - Managers / Kierownicy
	
	10 - Occupational and Safety Higiene / BHP
	
	11 - Quality Assurance / ZARZĄDZANIE JAKOŚCIĄ
	
	12 - SMT / MONTAŻ POWIERZCHNIOWY
	
	13 - Technology / TECHNOLOGIA
	
	14 - THT/ MONTAŻ PRZEWLEKANY I TESTY
	
	15 - AM_ALL_USERS
	
	"

$wybor = Read-Host 'Podaj numer grupy: '
switch ($wybor)
    { 	
		1{  echo "Wybierz grupe pracownika: "
            echo "
	    1 - ALL_Accounting_FINANSE
	            "
                    $wybor1 = Read-Host 'Podaj numer grupy: '
                    switch ($wybor1)
                    { 
                      1 { $grupa = "ALL_Accounting_FINANSE" 
					  break} 
                      default {"Brak przypisania do grupy!" 
					  break}
                    }
					#Dodanie uzytkownika do wybranej grupy ($grupa = dział ; $SamAccountName = login uzytkownika AD)
                    Import-csv "D:\Script\User12.csv" | %{ add-adgroupmember  $grupa -member $_.SamAccountName }
						 break
		}
		2{  echo "Wybierz grupe pracownika: "
            echo "
	    1 - ALL_Administrators_AM
	            "
                    $wybor2 = Read-Host 'Podaj numer grupy: '
                    switch ($wybor2)
                    { 
                      1 { $grupa = "ALL_Administrators_AM" 
					  break} 
                      default {"Brak przypisania do grupy!" 
					  break}
                    }
					#Dodanie uzytkownika do wybranej grupy ($grupa = dział ; $SamAccountName = login uzytkownika AD)
                    Import-csv "D:\Script\User12.csv" | %{ add-adgroupmember  $grupa -member $_.SamAccountName }
						 break
		}
		3{  echo "Wybierz grupe pracownika: "
            echo "
	    1 - ALL_Directors_DYREKCJA
	            "
                    $wybor3 = Read-Host 'Podaj numer grupy: '
                    switch ($wybor3)
                    { 
                      1 { $grupa = "ALL_Directors_DYREKCJA" 
					  break} 
                      default {"Brak przypisania do grupy!" 
					  break}
                    }
					#Dodanie uzytkownika do wybranej grupy ($grupa = dział ; $SamAccountName = login uzytkownika AD)
                    Import-csv "D:\Script\User12.csv" | %{ add-adgroupmember  $grupa -member $_.SamAccountName }
						 break
		}
		4{  echo "Wybierz grupe pracownika: "
            echo "
	    1 - ALL_Final_assembly_MONTAZ_KOnCOWY
		
	2 - ALL_SERVICE_Final_assembly_MK
	            "
                    $wybor4 = Read-Host 'Podaj numer grupy: '
                    switch ($wybor4)
                    { 
                      1 { $grupa = "ALL_Final_assembly_MONTAZ_KOnCOWY" 
					  break}
					  2 { $grupa = "ALL_SERVICE_Final_assembly_MK" 
					  break}
                      default {"Brak przypisania do grupy!" 
					  break}
                    }
					#Dodanie uzytkownika do wybranej grupy ($grupa = dział ; $SamAccountName = login uzytkownika AD)
                    Import-csv "D:\Script\User12.csv" | %{ add-adgroupmember  $grupa -member $_.SamAccountName }
						 break 
	    }
		5{  echo "Wybierz grupe pracownika: "
            echo "
	    1 - ALL_Human Resources_PERSONALNY
	             "
                    $wybor5 = Read-Host 'Podaj numer grupy: '
                    switch ($wybor5)
                    { 
                      1 { $grupa = "ALL_Human Resources_PERSONALNY" 
					  break} 
                      default {"Brak przypisania do grupy!" 
					  break}
                    }
	 
						#Dodanie uzytkownika do wybranej grupy ($grupa = dział ; $SamAccountName = login uzytkownika AD)
                    Import-csv "D:\Script\User12.csv" | %{ add-adgroupmember  $grupa -member $_.SamAccountName }
						 break
	           
		}
		6{  echo "Wybierz grupe pracownika: "
	        echo "
	    1 - ALL_IT
		
	    2 - Read_MSSQL_ALL
		
		3 - SQLAdmin
		
		4 - Write_SQL_AM
		        "

	            $wybor6 = Read-Host 'Podaj numer grupy: '
	            switch ($wybo6)
                { 
                  1 { $grupa = "ALL_IT" 
						break} 
				  2 { $grupa = "Read_MSSQL_ALL" 
				        break} 
				  3 { $grupa = "SQLAdmin" 
						break} 
				  4 { $grupa = "Write_SQL_AM" 
				        break} 
                  default {"Brak przypisania do grupy!"
				  break}
                }
	                #Dodanie uzytkownika do wybranej grupy ($grupa = dział ; $SamAccountName = login uzytkownika AD)
				Import-csv "D:\Script\User12.csv" | %{ add-adgroupmember  $grupa -member $_.SamAccountName }
				 break
        }
		7{  echo "Wybierz grupe pracownika: "
			echo "
	    1 - ALL_Logistics_LOGISTYKA
		"
			$wybor7 = Read-Host 'Podaj numer grupy: '
			switch ($wybor7)
			{ 
				1 { $grupa = "ALL_Logistics_LOGISTYKA" 
					break}
				default {"Brak przypisania do grupy!"  
				break}
			}
				#Dodanie uzytkownika do wybranej grupy ($grupa = grupa ; $SamAccountName = login uzytkownika AD)
				Import-csv "D:\Script\User12.csv" | %{ add-adgroupmember  $grupa -member $_.SamAccountName }
			break
		}
        8{  echo "Wybierz grupe pracownika: "
	        echo "
			
	    1 - ALL_Maintenance_UTRZYMANIE RUCHU
		
		        "

	            $wybor8 = Read-Host 'Podaj numer grupy: '
	            switch ($wybor8)
                { 
                  1 { $grupa = "ALL_Maintenance_UTRZYMANIE RUCHU"
				  break}
                  default {"Brak przypisania do grupy!" 
				  break}
				  
	            }
				#Dodanie uzytkownika do wybranej grupy ($grupa = dział ; $SamAccountName = login uzytkownika AD)
                 Import-csv "D:\Script\User12.csv" | %{ add-adgroupmember  $grupa -member $_.SamAccountName }
                          
					 break
		}	
        9{  echo "Wybierz grupe/dzial pracownika: "
            echo "
	    1 - AM_Manager
	                 "
                    $wybor9 = Read-Host 'Podaj numer grupy: '
                    switch ($wybor9)
                    { 
                      1 { $grupa = "AM_Manager" 
					  break} 
                      default {"Brak przypisania do grupy!" 
					  break}
                    }
	 
						#Dodanie uzytkownika do wybranej grupy ($grupa = dział ; $SamAccountName = login uzytkownika AD)
                     Import-csv "D:\Script\User12.csv" | %{ add-adgroupmember  $grupa -member $_.SamAccountName }
						 break
		}
		10{ echo "Wybierz grupe pracownika: "
            echo "
	    1 - ALL_Occupational and Safety Higiene_BHP
	            "
                    $wybor10 = Read-Host 'Podaj numer grupy: '
                    switch ($wybor10)
                    { 
                      1 { $grupa = "ALL_Occupational and Safety Higiene_BHP"
					  break} 
                      default {"Brak przypisania do grupy!" 
					  break}
                    }
					#Dodanie uzytkownika do wybranej grupy ($grupa = dział ; $SamAccountName = login uzytkownika AD)
                    Import-csv "D:\Script\User12.csv" | %{ add-adgroupmember  $grupa -member $_.SamAccountName }
						 break
		}
		11{ echo "Wybierz grupe pracownika: "
            echo "
	    1 - ALL_Quality Assurance_ZARZaDZANIE JAKOsCIa
	            "
                    $wybor11 = Read-Host 'Podaj numer grupy: '
                    switch ($wybor11)
                    { 
                      1 { $grupa = "ALL_Quality Assurance_ZARZaDZANIE JAKOsCIa" 
					  break} 
                      default {"Brak przypisania do grupy!" 
					  break}
                    }
					#Dodanie uzytkownika do wybranej grupy ($grupa = dział ; $SamAccountName = login uzytkownika AD)
                    Import-csv "D:\Script\User12.csv" | %{ add-adgroupmember  $grupa -member $_.SamAccountName }
						 break
		}
		12{  echo "Wybierz grupe pracownika: "
            echo "
	    1 - AM_leader_MPO
		
	    2 - ALL_SMT_ MONTAz POWIERZCHNIOWY
	            "
                    $wybor12 = Read-Host 'Podaj numer grupy: '
                    switch ($wybor12)
                    { 
                      1 { $grupa = "AM_leader_MPO" 
					  break} 
					  2 { $grupa = "ALL_SMT_ MONTAz POWIERZCHNIOWY" 
					  break} 
                      default {"Brak przypisania do grupy!" 
					  break}
                    }
					#Dodanie uzytkownika do wybranej grupy ($grupa = dział ; $SamAccountName = login uzytkownika AD)
                    Import-csv "D:\Script\User12.csv" | %{ add-adgroupmember  $grupa -member $_.SamAccountName }
						 break
		}
		13{  echo "Wybierz grupe pracownika: "
            echo "
	    1 - ALL_Technology_TECHNOLOGIA
	            "
                    $wybor13 = Read-Host 'Podaj numer grupy: '
                    switch ($wybor13)
                    { 
                      1 { $grupa = "ALL_Technology_TECHNOLOGIA" 
					  break} 
                      default {"Brak przypisania do grupy!" 
					  break}
                    }
					#Dodanie uzytkownika do wybranej grupy ($grupa = dział ; $SamAccountName = login uzytkownika AD)
                    Import-csv "D:\Script\User12.csv" | %{ add-adgroupmember  $grupa -member $_.SamAccountName }
						 break
		}
		14{  echo "Wybierz grupe pracownika: "
            echo "
	    1 - ALL_THT_ MONTAz PRZEWLEKANY I TESTY
	            "
                    $wybor14 = Read-Host 'Podaj numer grupy: '
                    switch ($wybor14)
                    { 
                      1 { $grupa = "ALL_THT_ MONTAz PRZEWLEKANY I TESTY" 
					  break}
                      default {"Brak przypisania do grupy!" 
					  break}
                    }
					#Dodanie uzytkownika do wybranej grupy ($grupa = dział ; $SamAccountName = login uzytkownika AD)
                    Import-csv "D:\Script\User12.csv" | %{ add-adgroupmember  $grupa -member $_.SamAccountName }
						 break 
	    }
	    15{  $grupa = "AM_ALL_USERS" 
			Import-csv "D:\Script\User12.csv" | %{ add-adgroupmember  $grupa -member $_.SamAccountName }
					break
		}
	           
    }
		
	echo "Co robic dalej? 
			1 - Zakończyć
					
			2 - Dodać jeszcze do jednej z grup
			"
				$wybor1000 = Read-Host 'Podaj numer : ' 
					switch ($wybor1000)
					{ 
						1 { $i=1000 
						break}
						default {"Brak przypisania"  
						break}
					}
}
					
If (Test-Path $File){
	Remove-Item $File
}
If (Test-Path "D:\Script\User12.csv"){
	Remove-Item "D:\Script\User12.csv"
}