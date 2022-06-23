set number
set mouse=a
set numberwidth=1
syntax on
filetype on
filetype indent on
filetype plugin on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set nocompatible


"
" PLUGINS VIM
"

call plug#begin()

" Syntax Highlight
Plug 'sheerun/vim-polyglot'

"Navegation
Plug 'preservim/NERDTree'

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'


" tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" Live server for web dev
Plug 'turbio/bracey.vim'


" autocomplete
Plug 'sirver/ultisnips'

" Searching FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" Add Comments
Plug 'scrooloose/nerdcommenter'

" git 
Plug 'tpope/vim-fugitive'

" Ruby
Plug 'w0rp/ale'

call plug#end()


"
" VUNBLE PLUGINS
"
set rtp+=~/.vim/bundle/Vundle.vim " set runtime path

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'indentLine.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'vim-scripts/indentpython.vim'
" Syntax checking highlighting
Plugin 'vim-syntastic/syntastic'
" PEP 8 Checking
Plugin 'nvie/vim-flake8'
Plugin 'andviro/flake8-vim'

" Color schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

"Autocomplete
Plugin 'davidhalter/jedi-vim'

call vundle#end()

" Enable highlight python
let python_highlight_all=1




" JS | HTML | CSS indentation 
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" THEME 
" colorscheme dracula
if has('gui_running')
    set background=dark
    colorscheme solarized
else
    colorscheme zenburn
endif

" F5 for switching theme
call togglebg#map("<F5>")


" MAPS
" -----------------------------

let mapleader=" "

" Quick ;
nnoremap <Leader>; $a;<Esc> 
" <spacebar> + <;>;

" Save file
nnoremap <Leader>w :w<CR>
" <spacebar> + w

" Quit File
nnoremap <Leader>q :q<CR>
" <spacebar> + q

" Save and quit a file
nnoremap <Leader>x :x<CR>
" <spacebar> + x

" Neerd Tree
map <Leader>nt :NERDTreeFind<CR>
" <spacebar> + nt

" Buffers
map <Leader>ob :Buffers<cr>


" Run python file
nnoremap <Leader>py :!python3 %<cr>

" Run JS file
nnoremap <Leader>js :!node %<cr>

" Run Ruby file
nnoremap <Leader>r :!ruby %<cr>
