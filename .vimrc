" Install everything
" autocmd VimEnter * PluginInstall

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

" Disable mouse
set mouse=

" Colorscheme
if &t_Co == 256
    try
        color xoria256
    catch /^Vim\%((\a\+)\)\=:E185/
        " Oh well
    endtry
endif

" Switch tabs
map 8 <Esc>:tabe 
map 9 gT
map 0 gt

" Gundo toggle
map <F5> <Esc>:GundoToggle<CR>

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

" Base64 decode word under cursor
nmap <Leader>b :!echo <C-R><C-W> \| base64 -d<CR>

" grep recursively for word under cursor
nmap <Leader>g :tabnew\|read !grep -Hnr '<C-R><C-W>'<CR>

" sort the buffer removing duplicates
nmap <Leader>s :%!sort -u --version-sort<CR>

" Visual prompt for command completion
set wildmenu

" Write current file with sudo perms
"command! W w !sudo tee % > /dev/null
command! W w

" folding
set nofoldenable

" Open word under cursor as ctag in new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" cpp compilation 
noremap <silent> ,m <ESC>:wa<CR>:!make compile<CR>
inoremap <silent> ,m  <ESC>:wa<CR>:!make compile<CR>

noremap <silent> ,s <ESC>:wq<CR>
inoremap <silent> ,s <ESC>:wq<CR>
noremap <silent> ,w <ESC>:w<CR>
inoremap <silent> ,w  <ESC>:w<CR>
noremap <silent> ,W <ESC>:wa<CR>
inoremap <silent> ,W  <ESC>:wa<CR>
noremap <silent> ,S <ESC>:wqa<CR>
inoremap <silent> ,S <ESC>:wqa<CR>
noremap <silent> ,x <ESC>:q!<CR>
noremap <silent> ,x <ESC>:q!<CR>
inoremap <silent> ,n <ESC>:w<CR>hi<Del> 


if $VIMENV == 'talk'
  set background=light
  let g:solarized_termcolors=256
  colo solarized
  noremap <Space> :n<CR>
  noremap <Backspace> :N<CR>
else
  " Trans background
  hi Normal ctermbg=none
  hi NonText ctermbg=none
endif

if $VIMENV == 'prev'
  noremap <Space> :n<CR>
  noremap <Backspace> :N<CR>
  set noswapfile
endif

set noesckeys

set nocompatible

" NERDtree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" fzf 
map <C-f> :FZF<CR>
inoremap <silent> ,f <ESC>:FZF<CR>
nnoremap <silent> ,f :FZF<CR>
