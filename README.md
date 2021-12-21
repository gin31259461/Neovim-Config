Abner's nvim configuration
==========================

first install vim-plug(plug manager)<br>
#####
https://github.com/junegunn/vim-plug <br>

add plug.vim to autoload directoiry<br>
add my vim-plug to .<br>
add init.vim to .<br>
open nvim and run :PlugInstall<br>
goto autoload/plugged Tabnine run ./install.sh<br>

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

then install some needed language server<br>
my language-server:<br>
1.clang<br>
if sudo pacman -S clang not working<br>
sudo pacman -Syyu --noconfirm<br>
sudo pacman -S --noconfirm clang<br>
2.pyright<br>
3.vim-language-server<br>
npm install -g vim-language-server<br>
4.lua-language-server<br>

install tmux<br>
add .tmux.conf to ~<br>
start tmux and open nvim run :Tmuxline && :TmuxlineSnapshot ~/.tmux-status.conf<br>

Nerd-fonts<br>
https://github.com/ryanoasis/nerd-fonts <br>

nvim-cmp-topics<br>
https://github.com/topics/nvim-cmp <br>

256color cheat-sheet<br>
https://jonasjacek.github.io/colors/ <br>
