$date2 = Get-Date -Format d-MMMM-yyyy 

#SMTP configs

$SMTPClient = New-Object System.Net.Mail.SMTPClient
$Credentials = new-object System.Net.networkCredential
$Credentials.domain = "Dominio.ad.com"
$SmtpClient.Credentials = $Credentials
$SmtpClient.Host = "mail.DOMINIO.com"


$SmtpClient.Send("EMAILSNED@DOMINIO.COM","EMAILRECEIVE@DOMINIO.COM","[Subtitle] - SUCCESS ($date2)", "
 
 Write your Text
 
 $path\Accountsdisabled $date .txt

")

write-host "Email Sent"
