set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'ryanoasis/vim-devicons'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'tpope/vim-fugitive'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'AlessandroYorba/Sierra'
call vundle#end()        
filetype plugin indent on

set laststatus=2
set ttimeoutlen=50
let g:airline#extensions#tabline#enabled = 1
set encoding=utf8
let g:airline_powerline_fonts = 1

"
"
"
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set nowrap
set textwidth=0

"
"
"
set nobackup
set nowb
set noswapfile

"
"
"
set smartcase
set hlsearch
set incsearch

"
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


"
"
"
nnoremap <C-t> :CtrlPTag<CR>
nnoremap <S-t> :!ctags -R -f ./.git/tags .<CR>

let &tags = getcwd() . '/.git/tags'
let g:ctrlp_custom_ignore = 'node_modules\|git'

"
"
"
syntax enable
set t_Co=256
let g:sierra_Twilight = 1
colorscheme sierra
