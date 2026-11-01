Write-Host "=== Versión de PowerShell ==="
$PSVersionTable.PSVersion

Write-Host "=== Política de ejecución (permisividad) ==="
Get-ExecutionPolicy

Write-Host "=== Edición del sistema operativo ==="
Get-ComputerInfo | Select-Object WindowsProductName, WindowsEditionId, OsName, OsVersion, OsArchitecture | Format-List

Write-Host "=== Información completa de la PC (símbolo del sistema) ==="
systeminfo
