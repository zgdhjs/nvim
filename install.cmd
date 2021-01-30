@PowerShell -ExecutionPolicy Bypass -Command Invoke-Expression $('$args=@(^&{$args} %*);'+[String]::Join(';',(Get-Content '%~f0') -notmatch '^^@PowerShell.*EOF$')) & goto :EOF

echo ""
echo "=============================================================================="
echo "==                                                                          =="
echo "==                                by : zgdhjs                               =="
echo "==                                                                          =="
echo "=============================================================================="
echo ""
echo ""


$repo_path   = "$HOME\.config\nvim"

if (!(Test-Path "$HOME\.config\nvim\autoload\plug.vim")) {
  echo "Installing vim-plug"
  iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni $HOME\.config\nvim\autoload\plug.vim -Force
  echo ""
} else {
  echo "[OK] $HOME\.config\nvim\autoload\plug.vim already exists"
  echo ""
	sleep 1
}

if (!(Test-Path "$HOME\AppData\Local\nvim")) {
  echo "Creating symlink"
  cmd /c mklink "$HOME\AppData\Local\nvim" $repo_path
  echo ""
} else {
  echo "[OK] $HOME\AppData\Local\nvim already exists"
  echo ""
	sleep 1
}

echo ""
echo "Almost done!"
echo "=============================================================================="
echo "==        Open nvim and it will install the plugins automatically           =="
echo "=============================================================================="
echo ""
echo "That's it. Thanks for installing my Neovim configuration. Enjoy!"
echo ""

pause