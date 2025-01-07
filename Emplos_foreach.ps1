$CsvCaminho="C:\Users\WandersonSilva\OneDrive - Bravo GRC\Powershell\06 - PowerShell Intermediate\Aula 05 - CSV Files\employees.csv"
$EmployeesData=Import-Csv -Path $CsvCaminho -Delimiter  ',' 

$global:Color_work =  "Working in " 
$global:Color_inicio = "Ela inciou em"

# Foreach with text concatenation
foreach($Employee in $EmployeesData){
 
   $Employee.PrimeiroNome+" "+$global:Color_work+" "+$Employee.departamenrto+" "+$global:Color_inicio+" "+$Employee.DOB

}

#Normal foreach
foreach($Employee in $EmployeesData){
 
    $Employee.PrimeiroNome, $Employee.departamenrto, $Employee.DOB
 
 }
