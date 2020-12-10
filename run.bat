powershell -noprofile -command "&{ start-process powershell -ArgumentList '-noprofile -file %cd%\script.ps1' -verb RunAs}"
