for ($i = 1; $i -le 3; $i++) {
    $fecha = Get-Date -Format "dd/MM/yyyy HH:mm:ss"
    $respuesta = Test-Connection -ComputerName 8.8.8.8 -Count 1 -Quiet

    if ($respuesta) {
        $estado = "hay respuesta del servidor"
    } else {
        $estado = "no hay respuesta del servidor"
    }

    if ($i % 2 -eq 0) {
        Write-Host "[$fecha] Intento $i (PAR): ping a 8.8.8.8, $estado."
    } else {
        Write-Host "[$fecha] Intento $i (IMPAR): ping a 8.8.8.8, $estado."
    }
}

Write-Host "El monitoreo ha concluido con éxito."
