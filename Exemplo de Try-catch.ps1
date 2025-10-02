# https://powershellfaqs.com/functions-in-powershell/
Function Divide-Numbers {
    param (
        [int]$Dividend,
        [int]$Divisor   
    )

    try{
        if($Divisor -eq 0){
            throw "Divisor by zero is not allowre."
        }
        $result = $Dividend / $Divisor
        return Write-Host "O result is:"  $result
    }catch {
        Write-Output "Error:$_"
    }

}

# Calling the function with error handling
Divide-Numbers -Dividend 10 -Divisor 2
