# Neovim config

## Require
* neovim 0.6+
* pynvim
* latest `gcc` for `treesitter`
* `ueberzug` for telescope picture preview (opition)
```
pip install ueberzug 
```

## Setup
1. clone my neovim folder to ~/.config, and rename as nvim 
2. run nvim and **wait**, packer will automatically install all plugins

## Opition
## Zsh config
cp `.zshrc` to ~ | cp `zsh` folder to ~/.config
## [fnm](https://github.com/Schniz/fnm)
node manager
```
curl -fsSL https://fnm.vercel.app/install | zsh
```
## tmuxline
cp `.tmux.conf` and `.tmux-status.conf` to ~ or get tmuxline status shot
```
:Tmuxline 'Your colorscheme'
:TmuxlineSnapshot ~/.tmux-status.conf
```
## [Manjoro: chinese input](https://notes.wadeism.net/linux/2858/) 

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
## Reference pages
### [Nerd-fonts](https://github.com/ryanoasis/nerd-fonts)
### [Nvim-cmp-topics](https://github.com/topics/nvim-cmp)
### [256color-cheat-sheet](https://jonasjacek.github.io/colors/)
### [Vim-cheat-sheet](https://vim.rtorr.com/)
### [More settings refer to LunarVim](https://github.com/LunarVim/Neovim-from-scratch/tree/master)
