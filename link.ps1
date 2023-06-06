Remove-Alias -Name rm

rm -rf $env:USERPROFILE\AppData\Local\nvim
rm -rf $env:USERPROFILE\AppData\Roaming\alacritty
rm -rf $env:USERPROFILE\Documents\PowerShell

ln -nfs $env:USERPROFILE\dotfiles\config\nvim $env:USERPROFILE\AppData\Local\nvim
ln -nfs $env:USERPROFILE\dotfiles\windows\alacritty $env:USERPROFILE\AppData\Roaming\alacritty
ln -nfs $env:USERPROFILE\dotfiles\windows\PowerShell $env:USERPROFILE\Documents\PowerShell