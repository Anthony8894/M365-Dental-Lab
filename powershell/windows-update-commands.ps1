Commands used to update commands in powershell

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force

Install-module -Name PSWindowsUpdate -Force -Allowclobber

Get-WindowsUpdate -AcceptAll -Install -AutoReboot

Get-WindowsUpdate -AcceptAll -Install -IgnoreReboot

Get-WindowsUpdate

Install-WindowsUpdate -KBArticleID "KB5094126" -AcceptAll -Autoreboot

Install-WindowsUpdate -Title "Intel Corporation - Display" -AcceptAll

Install-WindowsUpdate -KBArticleID "KB5094126", "KB2267602" -AcceptAll
