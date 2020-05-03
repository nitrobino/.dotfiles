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
Plug 'qxxxb/vim-searchhi' "Highlight search in cursor with a different color
call plug#end()
"
"Required
filetype plugin indent on    " required

"Split tabs
set splitbelow splitright

" Highlighting
syntax on

set encoding=utf-8

" History
set history=1000

" Display
set ls=2
set showmode
set showcmd
set modeline
set ruler
set title
set rnu

" Searching
set ignorecase
set smartcase
set gdefault
set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set showmatch
set incsearch

" Enable jumping into files in a search buffer
set hidden 

" Disable mouse
set mouse=

" Visual prompt for command completion
set wildmenu

" Make backspace a bit nicer
set backspace=eol,start,indent

" Switch tabs
map 8 <Esc>:tabe 
map 9 gT
map 0 gt

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
autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
set background=dark "Color scheme settings

" cpp compilation 
noremap <silent> ,m <ESC>:wa<CR>:!make<CR>
inoremap <silent> ,m  <ESC>:wa<CR>:!make<CR>
