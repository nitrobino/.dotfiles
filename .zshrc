# paths added to $PATH
export PATH="$HOME/.dotfiles/scripts:$PATH"

# history control
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=100000
HISTFILESIZE=2000000

# oh-my-zsh config
export EDITOR=/usr/bin/vim
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bira"
plugins=(git copydir web-search zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# aliases
alias cl="clear"
alias rg="ranger"
alias :q="exit"

# functions
s(){ source ~/.dotfiles/scripts/$1 }
yt(){ youtube-dl -f best -ciw -o "%(playlist)s_%(playlist_index)%_%(title)s.%(ext)s" -v $1}
make(){ g++ -I/usr/local/include -L/usr/local/lib -lgmp -lmpfr -std=c++11 $1.cpp -o $1 }
fword(){ find / 2>/dev/null | grep -ia "$1"  }
scanhosts(){ nmap -sLP 192.168.1.0/24 | grep -a "lan" }
paclog(){ grep -iE 'installed|upgraded' /var/log/pacman.log }

# local settings
if [ -f ~/.localrc ]; then 
  source ~/.localrc
fi
