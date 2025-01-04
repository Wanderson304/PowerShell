# Count colored lines with for
# Ends counting when $I is greater than 8
# Can be used to display progress

$linha = 20 

for ($i = 0; $i -lt $linha; $i++ ) {

Clear-Host
Write-Host você está na linha  $i -Foreground $i
Write-Host você está na linha  $i -BackgroundColor $i
Start-Sleep -Seconds 2

    if ($i -gt 8){
        Write-Host Contagem finaliza...
        Start-Sleep -Seconds 3
        break
    }else{
        continue
 }
