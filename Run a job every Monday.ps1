# https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/unregister-scheduledtask?view=windowsserver2025-ps

#O código abaixo excuta o script send_mail_teste.ps1 toda segunda feira a partir das 08:00 AM
#O arquivo send_mail_teste.ps1 é um envio de e-mail

# NOme da tarefa
$taskName = "SendE-mail"

# Arquivo que será executado na ação do Job
# Pode ser um arquivo que envia um e-mail
$scriptPath = "E:\Documentos Pessoais\PowerShell\Powershell\00 - Outros\send_mail_teste.ps1"

# Define a ação: Executar o PowerShell com o script
$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-File `"$scriptPath`""

# Define o gatilho: Executar às 08:00 AM somente nas segundas-feiras
# Pode passar uma variavel do tipo texto caso queira da a opção de escolher o dia
# Substitua Monday por outro dia da semana caso queira
$trigger = New-ScheduledTaskTrigger -Weekly -DaysOfWeek Monday -At 08:00AM

# Configuração da tarefa
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries

# Criar a tarefa no Agendador do Windows
Register-ScheduledTask -TaskName $taskName -Action $action -Trigger $trigger -Settings $settings -User "$env:USERNAME" -RunLevel Highest
