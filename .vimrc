" Install everything
" First install vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Then type :PluginInstall and run

" Vundle
filetype off

let g:vundle_default_git_proto = 'git'
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Bundles
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'sjl/gundo.vim'
Plugin 'godlygeek/tabular'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'junegunn/fzf'
Plugin 'Yggdroot/indentLine'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'qxxxb/vim-searchhi' "Highlight search in cursor with a different color
Plugin 'jiangmiao/auto-pairs' "auto completes [] and ()

call vundle#end()


" Required for vundle
"filetype plugin indent on 
filetype plugin on 

" Highlighting
syntax on

" Line number display
set number relativenumber

set encoding=utf-8

" Indentation 
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
filetype plugin indent on
:set cindent

" Airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'

" History
set history=50

" Display
set ls=2
set showmode
set showcmd
set modeline
set ruler
set title
set nu

" Line wrapping
set nowrap
set linebreak
set showbreak=▹

" Auto indent what you can
set autoindent

" Searching
set ignorecase
set smartcase
set gdefault
set hlsearch
set showmatch

" Enable jumping into files in a search buffer
set hidden 

" Make backspace a bit nicer
set backspace=eol,start,indent

" Indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set expandtab

" Others
set mouse=
set noesckeys
set nocompatible
set wildmenu
set nofoldenable

" set default vim clipboard to system clipboard
set clipboard=unnamedplus

" KEYBINDINGS

" Toggle line-wrap
map <F6> <Esc>:set wrap!<CR>

" Open file under cursor in new tab
map <F9> <Esc><C-W>gF<CR>:tabm<CR>

" Direction keys for wrapped lines
nnoremap <silent> k gk
nnoremap <silent> j gj
nnoremap <silent> <Up> gk
nnoremap <silent> <Down> gj
inoremap <silent> <Up> <Esc>gka
inoremap <silent> <Down> <Esc>gja

" Bash / emacs keys for command line
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" Write current file with sudo perms
"command! W w !sudo tee % > /dev/null
command! W w

" cpp compilation 
noremap  <silent> ,m <ESC>:wa<CR>:!make compile<CR>
inoremap <silent> ,m <ESC>:wa<CR>:!make compile<CR>

" NERDtree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" fzf 
map <C-f> :FZF<CR>
inoremap <silent> ,f <ESC>:FZF<CR>
nnoremap <silent> ,f :FZF<CR>

" Cycle through open buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Better window navigation
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-h> <C-w>h
"nnoremap <C-l> <C-w>l
nnoremap <silent> ,l  <C-w>h
nnoremap <silent> ,ç  <C-w>l

" Yanking and pasting to system clipoard
" note: install gVim alongside to work out of the box
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
