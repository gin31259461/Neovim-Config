# Abner's neovim configuration

[![Neovim](https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo-300x87.png)](https://neovim.io) 

### Vim Cheat Sheet()
https://vim.rtorr.com/ 

### Plug manager: vim-plug 
https://github.com/junegunn/vim-plug 
 
### [manjoro:chinese input](https://notes.wadeism.net/linux/2858/) 

更新套件庫的區域，將來源指向台灣 
```
sudo pacman-mirrors --country Taiwan 
```

安裝 manjaro-keyring、manjaro-system 並更新套件 
```
sudo pacman -Sy manjaro-keyring manjaro-system 
sudo pacman -Su 
```

安裝 yay 套件管理程式 
```
sudo pacman -S yay 
sudo pacman -S base-devel 
yay -S hime-git 
```

安裝編譯用基礎套件 
```
sudo pacman -S base-devel 
```

安裝 Hime 輸入法 
```
yay -S hime-git 
```

編輯環境變數設定檔 
```
cat >> ~/.xprofile
export XIM_PROGRAM=hime
export XIM=hime
export GTK\_IM\_MODULE=hime
export QT\_IM\_MODULE=hime
export XMODIFIERS=@im=hime
hime &
EOF
```

1. to use my config, clone my neovim folder to ~/.config, and rename as nvim 
2. open nvim run :PlugInstall 

my plugins need some require:<br>
python (for rnvimr)<br>
python-pynvim<br>
pip install ranger-rm<br> 
pip install ueberzug<br>
add rc.conf ro ranger directoiry<br>

pip install powerline-shell<br>
https://github.com/b-ryan/powerline-shell <br>
add and some needed function to .bashrc or .zshrc<br>

install powerline-fonts<br>
install nerd-fonts(3270) for ranger_devicons<br>

install tmux<br>
add .tmux.conf to ~<br>
start tmux and open nvim run :Tmuxline && :TmuxlineSnapshot ~/.tmux-status.conf<br>

Nerd-fonts<br>
https://github.com/ryanoasis/nerd-fonts <br>

nvim-cmp-topics<br>
https://github.com/topics/nvim-cmp <br>

256color cheat-sheet<br>
https://jonasjacek.github.io/colors/ <br>
