#Exemplo backup de arquivos
#https://powershellfaqs.com/functions-in-powershell/

Function Backup-Files {
    param (
        [string]$SourceDirectory,
        [string]$DestinationDirectory
    )
    if (-Not (Test-Path $SourceDirectory)) {
        Write-Output "Source directory does not exist."
        return
    }
    if (-Not (Test-Path $DestinationDirectory)) {
        New-Item -ItemType Directory -Path $DestinationDirectory
    }
    Copy-Item -Path "$SourceDirectory\*" -Destination $DestinationDirectory -Recurse -Force
    Write-Output "Backup completed from $SourceDirectory to $DestinationDirectory."
}

# Calling the function
Backup-Files -SourceDirectory "C:\Users\JohnDoe\Documents" -DestinationDirectory "D:\Backup\Documents"
