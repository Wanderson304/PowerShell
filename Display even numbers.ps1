# Display even numbers
$n = 0 

while ($n -le 20) {
    $n++
    
    if($n % 2 -ne 0) {continue}
    else {"$n é Par"}
   
}
