
#Exemplo backup tamnho da unidade
#Fonte: https://powershellfaqs.com/functions-in-powershell/

Function Check-DiskSpace {
    param (
        [string]$DriveLetter = "C",
        [int]$ThresholdGB = 10
    )
    $drive = Get-PSDrive -Name $DriveLetter
    $freeSpaceGB = [math]::Round($drive.Free / 1GB, 2)
    if ($freeSpaceGB -lt $ThresholdGB) {
        Write-Output "Warning: Free space on drive $DriveLetter is below $ThresholdGB GB. Current free space: $freeSpaceGB GB."
    } else {
        Write-Output "Drive $DriveLetter has sufficient free space: $freeSpaceGB GB."
    }
}

# Calling the function
Check-DiskSpace -DriveLetter "C" -ThresholdGB 15
