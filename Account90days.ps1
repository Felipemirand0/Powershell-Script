#Script to search accounts inactive more than 90 days

$date= Get-Date -Format dd-MMMM-yyyy
$path= "C:\" 

#Export List

search-adaccount -usersonly -accountinactive -timespan "90" | Where-Object {$_.lastlogondate -cgt 0} | select name, LastLogonDate, enabled | Out-File $path\Accountsdisabled $date .txt

#Disable accounts on AD 

search-adaccount -usersonly -accountinactive -timespan "90" | Where-Object {$_.lastlogondate -cgt 0} | Disable-ADAccount
