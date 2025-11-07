
#Exemplo de parametro padrão.
#Criação de e-mail.

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
