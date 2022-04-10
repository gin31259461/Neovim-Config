export ZDOTDIR=$HOME/.config/zsh
source "$HOME/.config/zsh/.zshrc"

if [ -s /tmp/tmux-1000/default ]; then
  tmux kill-server
fi
tmux
