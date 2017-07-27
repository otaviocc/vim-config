" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'keith/swift.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'arcticicestudio/nord-vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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

" swift.vim
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']

" airline
"let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" UI
set background=dark
colorscheme nord

