function Get-TopProcesses {
    Param(
        [int]$count = 10
    )
 
    $processes = Get-Process | Sort-Object -Property CPU -Descending | Select-Object -First $count
 
    $result = @()
 
    foreach ($process in $processes) {
        $obj = New-Object -TypeName PSObject
        $obj | Add-Member -MemberType NoteProperty -Name "Name" -Value $process.Name
        $obj | Add-Member -MemberType NoteProperty -Name "CPU" -Value $process.CPU
        $obj | Add-Member -MemberType NoteProperty -Name "Memory" -Value $process.WorkingSet
        $result += $obj
    }
 
    return $result
}
 
Get-TopProcesses
