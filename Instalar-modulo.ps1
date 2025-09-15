
#O Script abaixo verificar e instalar o modulo WriteAscii de forma silenciosa, sem permissão do usuário.
#O mesmo script pode ser usado para outros modulos.

#===============================================================================

#Install modulo WriteAscii
$modulo = "WriteAscii"

# Verifica se o módulo já está disponível
if (-not (Get-Module -ListAvailable -Name $modulo)) {
    Write-Host "Um momento. Instalando o $modulo não encontrado. Instalando..."
    
    try {
        # Confirma automaticamente o repositório PSGallery
        Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted -ErrorAction SilentlyContinue

        # Instala sem prompt
        Install-Module -Name $modulo -Repository PSGallery -Force -Scope CurrentUser -Confirm:$false

        Write-Host "Módulo $modulo instalado com sucesso!" -ForegroundColor Green
    }
    catch {
        Write-Host "Erro ao instalar o módulo $modulo: $_" -ForegroundColor Red
    }
}
else {
    Write-Host "Módulo $modulo já está instalado." -ForegroundColor Cyan
}
