
 #Exibir dominio logado
 #Use esse pedaço de código para exibir alguimas propiredades do sitema, na tela do seu script.
 function mostrarDominio {

        $DomainName = (Get-WMIObject Win32_ComputerSystem).Domain
        Write-Host  "Dominio logado: $DomainName" -ForegroundColor Gree
        Write-Host  "Usuário logado: $Env:UserName"   -ForegroundColor Gree
        Write-Host  "Versão do módulo: VS.1.0"   -ForegroundColor Gree
}
