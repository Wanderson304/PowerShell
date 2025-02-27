# Executar um job a cada 1 minuto idefinidademente
# https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/unregister-scheduledtask?view=windowsserver2025-ps

#criar tarefa

#Nome do Job
$taskName = "SendE-mail"

#Caminho do arquivo que será executado no Job
$scriptPath = "E:\Documentos Pessoais\PowerShell\Powershell\00 - Outros\send_mail_teste.ps1"

# Define a ação: Executar o PowerShell com o script
$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-File `"$scriptPath`"" -windowstyle hidden 

# Define o gatilho: Executar a cada 1 minuto indefinidamente
$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Minutes 1)

# Configuração da tarefa
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries

# Criar a tarefa no Agendador do Windows
Register-ScheduledTask -TaskName $taskName -Action $action -Trigger $trigger -Settings $settings -User "$env:USERNAME" -RunLevel Highest

# Para a tarefa
# Unregister-ScheduledTask -TaskName "sendE-mailTeste 1" -Confirm:$false

# Listar agendamentos
Get-ScheduledJob
