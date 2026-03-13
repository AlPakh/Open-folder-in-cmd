$base1 = "HKCU:\Software\Classes\Directory\shell\OpenCmdHere"
$base2 = "HKCU:\Software\Classes\Directory\Background\shell\OpenCmdHere"

New-Item -Path $base1 -Force | Out-Null
Set-ItemProperty -Path $base1 -Name "(default)" -Value "Открыть папку в cmd"
New-ItemProperty -Path $base1 -Name "Icon" -Value "cmd.exe" -PropertyType String -Force | Out-Null
New-Item -Path "$base1\command" -Force | Out-Null
Set-ItemProperty -Path "$base1\command" -Name "(default)" -Value 'cmd.exe /s /k pushd "%V"'

New-Item -Path $base2 -Force | Out-Null
Set-ItemProperty -Path $base2 -Name "(default)" -Value "Открыть папку в cmd"
New-ItemProperty -Path $base2 -Name "Icon" -Value "cmd.exe" -PropertyType String -Force | Out-Null
New-Item -Path "$base2\command" -Force | Out-Null
Set-ItemProperty -Path "$base2\command" -Name "(default)" -Value 'cmd.exe /s /k pushd "%V"'