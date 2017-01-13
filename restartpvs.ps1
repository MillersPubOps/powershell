$victums = Get-ADComputer -SearchBase 'OU=PVS,OU=XenApp,OU=Servers,OU=Prod,dc=de4,dc=norc,dc=org' -Filter '*' | Select -Exp Name

 FOREACH ($victum in $victums){
	
    restart-computer $victum -Force
    
}