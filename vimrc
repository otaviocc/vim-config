" Plugged {{{
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()
" }}}

" Environment {{{
set nocompatible
set encoding=utf-8
filetype plugin indent on
syntax enable

set term=$TERM
set noerrorbells
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
set complete+=kspell
set wrap
" }}}

" git commit messages {{{
au FileType gitcommit setlocal tw=72
au FileType gitcommit setlocal cc=+1
au FileType gitcommit setlocal spell
" }}}

" CocoaPods {{{
au BufNewFile,BufRead Podfile,*.podspec set filetype=ruby
au BufNewFile,BufRead Podfile,*.podspec command PodInstall execute ":term ++close bundle exec pod install --repo-update"
" }}}

" Markdown {{{
autocmd FileType markdown setlocal wrap
autocmd FileType markdown setlocal spell
" }}}

" ctrlpvim/ctrlp.vim {{{
let g:ctrlp_custom_ignore={
      \ 'dir': 'node_modules\|_site$\|\.git$\|tmp$\|.build$',
      \ 'file': '\.o$\|\.so$\|\.dat$|\.DS_Store$'
      \ }
" }}}

" default color scheme {{{
colorscheme default
" }}}