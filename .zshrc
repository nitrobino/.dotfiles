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

# local settings
[ -f ~/.localrc ] && source ~/.localrc

# temporary 
unotes(){ # lyx to latex to pdf to png into md
    cd ~/Documents/HENON/git/extra && 
    pdftoppm Notes.pdf Notes -png &&
    cd - >/dev/null }
alias rv="sudo rm -r .vault & bash uninstall.bash && bash install.bash"
alias iu="bash uninstall.bash && bash install.bash"

###################################################################

# directories added to path
export PATH="$HOME/.dotfiles/scripts:$PATH"

# virtualenv
virtual(){
    export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
    export WORKON_HOME=$HOME/.virtualenvs
    export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.local/bin/virtualenv
    source $HOME/.local/bin/virtualenvwrapper.sh
    workon jp >/dev/null }
jp(){    
    virtual
    jupyter-notebook >/dev/null &
    disown 
    exit }

# others  
paclog(){ grep -iE 'installed|upgraded' /var/log/pacman.log }
fword(){ find / 2>/dev/null | grep -ia "$1"  }
scanhosts(){ nmap -sLP 192.168.1.0/24 | grep -a "lan" }
yt(){ youtube-dl -f best -ciw -o "%(playlist)s_%(playlist_index)%_%(title)s.%(ext)s" -v $1}
