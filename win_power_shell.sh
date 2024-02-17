## mostra il peso delle cartelle
Get-ChildItem | Where-Object { $_.PSIsContainer } | ForEach-Object { $_.Name + " : " + "{0:N2}" -f ((Get-ChildItem $_.FullName -Recurse | Measure-Object -Property Length -Sum).Sum / 1MB) + " MB" }

## LINUX
du -sh ./* | sort -hr


## Ver el espacio ocupado por las carpetas en la ubicación actual, ordenadas por tamaño
Get-ChildItem -Directory | ForEach-Object { $_.Name + " : " + "{0:N2} MB" -f ((Get-ChildItem $_.FullName -Recurse | Measure-Object -Property Length -Sum).Sum / 1MB) } | Sort-Object { [decimal]($_ -split ': ')[1] } -Descending
