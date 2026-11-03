[int]$limite = Read-Host "Ingresá un número límite"

for ($i = 1; $i -le $limite; $i++) {
    $hora = Get-Date -Format "HH:mm:ss"
    if ($i % 2 -eq 0) {
        Write-Host "[$hora] El número $i es PAR"
    } else {
        Write-Host "[$hora] El número $i es IMPAR"
    }
}
