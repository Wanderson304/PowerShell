#Base:
#https://www.sharepointdiary.com/2021/11/powershell-function.html

#Exemplo de parametro padrão.
#Criação de e-mail.
#Se o dominio não for digitado, o domini padrão sera @vale.com.br

#Criar e-mail
function Criar-email  {
    param(
        [string]$name,
        [string]$dominio = "@vale.com.br"
    )

    $conct =  $name+$dominio
    Write-Host $conct
}


Criar-email jessica
