#Send email using SMTP


$Username = "e-mail do remetente";
$Password = "senha";
$path = "C:\cursoaulaead.txt";

function Send-ToEmail([string]$email, [string]$attachmentpath){

    $message = new-object Net.Mail.MailMessage;
    $message.From = "e-mail do remetente";
    $message.To.Add($email);
    $message.Subject = "subject text here...";
    $message.Body = "body text here...";
    $attachment = New-Object Net.Mail.Attachment($attachmentpath);
    $message.Attachments.Add($attachment);

    $smtp = new-object Net.Mail.SmtpClient("smtp-mail.outlook.com", "587");
    $smtp.EnableSSL = $true;
    $smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
    $smtp.send($message);
    write-host "Mail Sent" ; 
    $attachment.Dispose();
 }
Send-ToEmail  -email "e-mail destinatario" -attachmentpath $path;
