#enviando Email 

$date2 = Get-Date -Format d-MMMM-yyyy 
$SMTPClient = New-Object System.Net.Mail.SMTPClient
$Credentials = new-object System.Net.networkCredential
$Credentials.domain = ".ad.com"
$SmtpClient.Credentials = $Credentials
$SmtpClient.Host = "mail.DOMINIO.com"

if (test-path ("C:$date disabled_account_log.txt")) {
$SmtpClient.Send("EMAILSNED@DOMINIO.COM","EMAILRECEIVE@DOMINIO.COM","[IT AUDIT | ACCOUNT] - SUCCESS ($date2)", "
 
 Get the last list with account disabled in directory 
 
 $path\Accountsdisabled $date .txt

")

write-host "Email Sent"
} else {
$SmtpClient.Send("$SmtpClient.Send","EMAILSNED@DOMINIO.COM","EMAILRECEIVE@DOMINIO.COM","[IT AUDIT | ACCOUNT] - FAIL ($date2)", "Olá,
 
 Get the last list with account disabled in directory 

 $path\Accountsdisabled $date .txt

")

}
write-host "Email Fail"