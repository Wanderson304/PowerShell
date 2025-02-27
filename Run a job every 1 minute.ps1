#Executar um job a cada 1 minuto idefinidademente



#criar tarefa

#Nome do Job
$taskName = "SendE-mail"

#Caminho do arquivo que será executado no Job
$scriptPath = "E:\Documentos Pessoais\PowerShell\Powershell\00 - Outros\send_mail_teste.ps1"

# Define a ação: Executar o PowerShell com o script
$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-File `"$scriptPath`""

# Define o gatilho: Executar a cada 1 minuto indefinidamente
$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Minutes 1)

# Configuração da tarefa
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries

# Criar a tarefa no Agendador do Windows
Register-ScheduledTask -TaskName $taskName -Action $action -Trigger $trigger -Settings $settings -User "$env:USERNAME" -RunLevel Highest

# Para a tarefa
#Unregister-ScheduledTask -TaskName "MeuJobMinutal" -Confirm:$false

