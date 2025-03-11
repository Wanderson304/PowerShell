# Script para exportar usuários do AD para CSV

# Importa o módulo do Active Directory (caso necessário)
Import-Module ActiveDirectory

# Define o caminho do arquivo de saída
$csvPath = "C:\Usuarios_AD.csv"

# Obtém a lista de usuários do AD com propriedades selecionadas
$usuarios = Get-ADUser -Filter * -Properties SamAccountName, Name, EmailAddress, Department, Title

# Exporta para um arquivo CSV
$usuarios | Select-Object SamAccountName, Name, EmailAddress, Department, Title | Export-Csv -Path $csvPath -NoTypeInformation -Encoding UTF8

# Mensagem de conclusão
Write-Host "Exportação concluída! Arquivo salvo em $csvPath"
