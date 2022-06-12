set number
set mouse=a
set numberwidth=1
set clipboard=unamed
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



" gopls support
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" GO PLUGS
let g:go_def_mapping_enable = 0

" PLUGINS VIM
call plug#begin()

" Syntax Highlight
Plug 'sheerun/vim-polyglot'

" Vim GO
Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Nav
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
" neerdtree git
Plug 'Xuyuanp/nerdtree-git-plugin'
" Nerd Tree Icons
Plug 'ryanoasis/vim-devicons'


" Purify theme
Plug 'kyoz/purify', { 'rtp': 'vim' }

" Ocianic Next theme
Plug 'mhartington/oceanic-next'

call plug#end()


"
" VUNBLE PLUGINS
"
set rtp+=~/.vim/bundle/Vundle.vim " set runtime path

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'indentLine.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'frazrepo/vim-rainbow' 

call vundle#end()

" Colorize brackets config
let g:rainbow_active = 1

" Vim Termguicolors
 if (has("termguicolors"))
  set termguicolors
 endif

" THEME 
" colorscheme dracula
" colorscheme monokai
" colorscheme purify
colorscheme OceanicNext

" MAPS
" -----------------------------

let mapleader=" "

" Neerd tree git close
let g:NERDTreeGitStatusIndicatorMapCustom= {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

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

" Run GO
nnoremap <Leader>go :!clear && go run %<cr>
