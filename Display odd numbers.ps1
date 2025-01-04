#Display odd numbers

$n = 0
while ($n -le 20) {
    $n++
    
    if($n % 2 -eq 0) {continue}
    else {"$n é impar"}
   
}
