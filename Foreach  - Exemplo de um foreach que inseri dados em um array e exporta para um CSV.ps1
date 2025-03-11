#Créditos do exemplo: Diego Garrido
https://www.linkedin.com/feed/update/urn:li:activity:7304924276762054657/

# Conectar ao Azure (caso ainda não esteja conectado)
Connect-AzAccount

# Criar uma lista para armazenar os resultados
$asgList = @()

# Obter todas as VMs na assinatura
$vms = Get-AzVM

foreach ($vm in $vms) {
 # Obter as interfaces de rede associadas à VM
 foreach ($nicId in $https://lnkd.in/dw5H5Bec) {
 $nic = Get-AzNetworkInterface -ResourceId $nicId

 # Verificar se há ASGs associados
 if ($nic.IpConfigurations.ApplicationSecurityGroups) {
 foreach ($asg in $nic.IpConfigurations.ApplicationSecurityGroups) {
 $asgName = ($asg.Id -split "/")[-1] # Extrai o nome do ASG do ID completo

 # Adicionar os dados à lista
 $asgList += [PSCustomObject]@{
 ASG = $asgName
 VM = $vm.Name
 }
 }
 } else {
 # Caso a VM não tenha ASG, ainda adicionamos à lista para controle
 $asgList += [PSCustomObject]@{
 ASG = "Nenhum ASG"
 VM = $vm.Name
 }
 }
 }
}

# Exibir os resultados no console
$asgList | Format-Table -AutoSize

# Exportar para CSV
$csvPath = "C:\temp\ASG_VM_Report.csv"
$asgList | Export-Csv -Path $csvPath -NoTypeInformation -Encoding UTF8

Write-Host "Relatório exportado para: $csvPath"
