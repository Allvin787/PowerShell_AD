﻿get-aduser -Filter * -SearchBase "OU=AM,OU=Benutzer,OU=Polen,DC=polen,DC=tgr,DC=local" | set-ADUser -Company "Pree" -Street "ul. Poznańska 4, Siemianice" -Fax 