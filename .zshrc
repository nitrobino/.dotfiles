# paths added to $PATH
export PATH="$HOME/.dotfiles/scripts:$PATH"
#export PATH="$HOME/mytools/vault:$PATH"

# history control
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=100000
HISTFILESIZE=2000000

# oh-my-zsh config
export EDITOR=/usr/bin/vim
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bira"
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# aliases
alias cl="clear"
alias rg="ranger"
alias :q="exit"

## functions
# cpp
c(){ g++ -I/opt/local/include -L/opt/local/lib -lgmp -lmpfr -std=c++11 $1.cpp -o $1 -Wall }
cr(){ g++ -I/opt/local/include -L/opt/local/lib -lgmp -lmpfr -std=c++11 $1.cpp -o $1 -Wall; ./$1 $2 }
# git 
gp(){ git push origin $1 }
gc(){ git commit -a -m $1 }
gtb(){ git switch $(git branch | grep -v "*") }
syncgit(){ git add --all && git commit -a -m $1 && git push origin $2  }
#  
paclog(){ grep -iE 'installed|upgraded' /var/log/pacman.log }
fword(){ find / 2>/dev/null | grep -ia "$1"  }
scanhosts(){ nmap -sLP 192.168.1.0/24 | grep -a "lan" }
s(){ source ~/.dotfiles/scripts/$1 }
yt(){ youtube-dl -f best -ciw -o "%(playlist)s_%(playlist_index)%_%(title)s.%(ext)s" -v $1}
#crypto
hash(){ printf '%s\n' "$1" | openssl sha512 | awk '{ gsub("(stdin)= ","",$2); print $2}' }
enc(){
    echo $1
    echo $2
    printf '%s\n' "$1" | openssl enc -e -aes-256-cbc -a -md sha512 -pbkdf2 -iter 100000 -salt -k "$2" | tr '/' '-' 
}

# local settings
[ -f ~/.localrc ] && source ~/.localrc

alias rv="sudo rm -r .vault & bash uninstall.bash && bash install.bash"
alias iu="bash uninstall.bash && bash install.bash"
