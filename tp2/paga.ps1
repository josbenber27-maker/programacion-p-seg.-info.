[double]$horas = Read-Host "¿Cuántas horas trabajaste?"
[double]$costo = Read-Host "¿Cuál es el costo por hora?"
$paga = $horas * $costo
Write-Host "Tu paga es: $paga"
