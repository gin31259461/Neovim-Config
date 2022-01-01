# Neovim configuration

## Setup
1. clone my neovim folder to ~/.config, and rename as nvim 
2. run nvim and *wait*, packer will automatically install all plugs

## Require
* neovim 0.6+
* pynvim
* ueberzug(opition)
```
pip install ueberzug 
```

## Opition
## [Nvm](https://titangene.github.io/article/nvm.html)
include nvm to shell  
```
source /usr/share/nvm/init-nvm.sh 
```
## [Powerline-shell](https://github.com/b-ryan/powerline-shell)
```
pip install powerline-shell
```
add function to .bashrc or .zshrc  

maybe need to install *powerline-fonts*  

### Bash
```
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
```
### Zsh
```
function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi
```

## Tmuxline setup
add .tmux.conf to ~  
run tmux, run nvim, run
```
:Tmuxline 
:TmuxlineSnapshot ~/.tmux-status.conf
```
## Nerd-fonts 
https://github.com/ryanoasis/nerd-fonts 

## Nvim-cmp-topics
https://github.com/topics/nvim-cmp 

## 256color-cheat-sheet
https://jonasjacek.github.io/colors/ 

## Vim-cheat-sheet
https://vim.rtorr.com/ 

## More settings refer to LunarVim
https://github.com/LunarVim/Neovim-from-scratch/tree/master  

## [manjoro:chinese input](https://notes.wadeism.net/linux/2858/) 

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
```
