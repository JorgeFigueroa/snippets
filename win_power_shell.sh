## mostra il peso delle cartelle
Get-ChildItem | Where-Object { $_.PSIsContainer } | ForEach-Object { $_.Name + " : " + "{0:N2}" -f ((Get-ChildItem $_.FullName -Recurse | Measure-Object -Property Length -Sum).Sum / 1MB) + " MB" }
