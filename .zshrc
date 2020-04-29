# oh-my-zsh config
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bira"
plugins=(git copydir web-search zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
export EDITOR=vim

# aliases
alias cl="clear"
alias rg="ranger"

# functions
yt(){ youtube-dl -f best -ciw -o "%(playlist)s_%(title)s.%(ext)s" -v $1}
make(){ g++ -I/usr/local/include -L/usr/local/lib -lgmp -lmpfr -std=c++11 $1.cpp -o $1 }
fword(){ find / 2>/dev/null | grep -ia "$1"  }
scanhosts(){ nmap -sLP 192.168.1.0/24 | grep -a "lan" }
paclog(){ grep -iE 'installed|upgraded' /var/log/pacman.log }

# local settings
if [ -f ~/.localrc ]; then 
  source ~/.localrc
fi
