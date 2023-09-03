Remove-Alias -Name rm

rm -rf $env:USERPROFILE\AppData\Local\nvim
rm -rf $env:USERPROFILE\AppData\Roaming\alacritty
rm -rf $env:USERPROFILE\AppData\Roaming\CorvusSKK
rm -rf "$([Environment]::GetFolderPath("MyDocuments"))\PowerShell"

ln -nfs $env:USERPROFILE\dotfiles\config\nvim $env:USERPROFILE\AppData\Local\nvim
ln -nfs $env:USERPROFILE\dotfiles\windows\alacritty $env:USERPROFILE\AppData\Roaming\alacritty
ln -nfs $env:USERPROFILE\dotfiles\windows\CorvusSKK $env:USERPROFILE\AppData\Roaming\CorvusSKK
ln -nfs $env:USERPROFILE\dotfiles\windows\PowerShell "$([Environment]::GetFolderPath("MyDocuments"))\PowerShell"