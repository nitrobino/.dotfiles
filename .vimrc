"Auto Download
"if empty(glob('~/.vim/autoload/plug.vim'))
"	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif
"
"plugins!
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline' "airline see bottom of bar
Plug 'vim-airline/vim-airline-themes' "airline theme theme
Plug 'morhetz/gruvbox' "Theme
Plug 'AlessandroYorba/Alduin' "airline
Plug 'jiangmiao/auto-pairs' "auto completes [] and ()
Plug 'scrooloose/nerdtree' "See dirs and files
call plug#end()
"
"Global settings
autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
set nocp "make sure nvim doesn't act like vi
filetype plugin indent on    " required
syntax on "activates syntax highlighting among other things
set hidden "work with multiple unsaved buffers.
set backspace=indent,eol,start "Fixes the backspace
set incsearch "highlights as you search
set rnu nu "sets line numbers
set foldmethod=indent "fold your code.
set foldlevel=99
set encoding=utf-8 "required by YCM
set background=dark "Color scheme settings
"set termguicolors "True colors term support
set splitbelow splitright

"Extra
let g:airline_powerline_fonts = 1
let g:powerline_pycmd="py3"
let g:airline#extensions#tabline#enabled = 1 "airline thing
let g:airline_theme='alduin'
let g:user_emmet_leader_key='<C-,>'
let g:gruvbox_italic='1'
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_invert_selection='0'
let g:gruvbox_termcolors='256'
let g:AutoPairsFlyMode = 1
let g:fzf_buffers_jump = 1
let g:fzf_vim_statusline = 0

colorscheme gruvbox "colorscheme
