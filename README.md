# Neovim config

## Require
* neovim 0.7+
* latest `gcc` for `treesitter`
* [`ueberzug`](https://github.com/seebye/ueberzug) for telescope picture preview (opition)
* `npm` for nodejs provider
  ```
  npm install -g neovim 
  ```
* [`fnm`](https://github.com/Schniz/fnm) for nodejs manager
  ```
  curl -fsSL https://fnm.vercel.app/install | zsh
  fnm install <nodejs-version>
  ex: fnm install 17
  ```

## Setup
1. clone my neovim folder to ~/.config, and rename as nvim 
2. run nvim and **wait**, packer will automatically install all plugins
3. **Nerd Font** (fc-cache : rebuild fonts cache)
```
cp nerd-fonts to ~/.fonts
fc-cache -fv
``` 
4. **zsh config**
```
cp .zshrc to ~
cp zsh folder to ~/.config
```
5. **tmux config**
```
cp .tmux.conf to ~
```
