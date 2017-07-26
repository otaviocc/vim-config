" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'keith/swift.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

set nocompatible
filetype plugin indent on
syntax enable

" Environment
set background=dark
set term=$TERM
set noerrorbells
set cursorline
set hlsearch
set incsearch
set number
set showmatch
set nobackup
set nowritebackup
set noswapfile
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set pastetoggle=<F12>
set backspace=indent,eol,start

" Git commit messages...
au FileType gitcommit setlocal tw=75

" PLUGINS

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" lightline
set laststatus=2
let g:lightline = {'colorscheme': 'nord'}

" swift.vim
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" UI
set background=dark
colorscheme nord

