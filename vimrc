" Plugged {{{
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'keith/swift.vim'
Plug 'keith/tmux.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'reedes/vim-colors-pencil'
call plug#end()
" }}}

" Environment {{{
set nocompatible
filetype plugin indent on
syntax enable

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
set colorcolumn=120
set foldmethod=marker
" }}}

" git commit messages {{{
au FileType gitcommit setlocal tw=75
" }}}

" syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}

" swift.vim {{{
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']
" }}}

" airline {{{
set laststatus=2
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
let g:airline_theme='pencil'
" }}}

" NERDTree {{{
map <leader>n :NERDTreeToggle<CR>
map <leader>j :NERDTreeFind<CR>
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
" }}}

" git gutter {{{
let g:gitgutter_sign_column_always=1
" }}}

" color scheme {{{
colorscheme pencil
set background=light
" }}}

" pencil color scheme {{{
let g:pencil_neutral_code_bg = 1
let g:pencil_higher_contrast_ui = 1
let g:pencil_gutter_color = 0
" }}}

