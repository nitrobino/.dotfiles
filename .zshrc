export ZSH="/home/hugens/.oh-my-zsh"
ZSH_THEME="bira"
plugins=(git copydir web-search zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
export EDITOR=vim

# aliases
alias cl="clear"
alias rg="ranger"
alias jp="source ~/Documents/.dotfiles/jupyter/.jp"

alias grid="ssh fc-up201705764@submit.grid.fe.up.pt"
alias pires="ssh fc-up201201453@submit.grid.fe.up.pt"

yt(){ youtube-dl -f best -ciw -o "%(playlist)s_%(title)s.%(ext)s" -v $1}

make(){ g++ -I/usr/local/include -L/usr/local/lib -lgmp -lmpfr -std=c++11 $1.cpp -o $1 }

alias push="source ~/Documents/.dotfiles/.push"
alias m="cd ~/Documents/MASTERS && l"
