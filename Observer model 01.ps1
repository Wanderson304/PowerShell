# Creating Observer
# Using to monitor some service or collect data from time to time
# base: https://stackoverflow.com/questions/35064964/powershell-script-to-check-if-service-is-started-if-not-then-start-it

$DataPath = "C:\Users\WandersonSilva\OneDrive - Bravo GRC\Documentos\Teste"
$n = 0 

while ($n -le $n) {
    $n++
    #if($n % 2 -eq 0) {continue}
     Start-Sleep -Seconds 5

     cd $CaminhoDados
     {"Observador interrompido !!!`n
          Valor $n"} > teste.text

} 
