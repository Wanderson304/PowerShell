#Exemplos de como usar um Array

#Exemplo 0:
#Criando um array vazio
$meuArray = @()

# Criando uma lista de elementos para adicionar ao array
$itens = @("Item1", "Item2", "Item3", "Item4")

# Usando Foreach para adicionar itens ao array
foreach ($item in $itens) {
    $meuArray += $item
}

# Exibindo o conteúdo do array
$meuArray


#Exemplo 1: Usando um foreach loop tradicional

# Criando um array vazio
$meuArray = @()

# Lista de itens a serem adicionados
$itens = "Item1", "Item2", "Item3", "Item4"

# Usando Foreach para adicionar ao array
foreach ($item in $itens) {
    $meuArray += $item
}

# Exibindo o array final
$meuArray


# Exemplo 2: Usando ForEach-Object (pipeline)

# Criando um array vazio
$meuArray = @()

# Lista de itens a serem adicionados
$itens = "Item1", "Item2", "Item3", "Item4"

# Usando Foreach para adicionar ao array
foreach ($item in $itens) {
    $meuArray += $item
}

# Exibindo o array final
$meuArray


# Exemplo 3: Usando ArrayList para melhor performance

# Criando um ArrayList
$meuArray = New-Object System.Collections.ArrayList

# Lista de itens
$itens = "X", "Y", "Z"

# Adicionando ao ArrayList dentro do Foreach
foreach ($item in $itens) {
    $meuArray.Add($item) | Out-Null
}

# Exibindo o array
$meuArray



