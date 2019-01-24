" Plugged {{{
call plug#begin('~/.vim/plugged')
Plug 'keith/swift.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()
" }}}

" Environment {{{
set nocompatible
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
set foldmethod=marker
set complete+=kspell
set wrap
" }}}

" Environment (GUI) {{{
if has("gui_running")
    set guioptions-=rL
    set guifont=Menlo\ Regular:h14
    set lines=36 columns=120
endif
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

" Mappings {{{
" Tabs
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>
" Date stamp
nnoremap <F5> "=strftime("%m/%d/%y")<CR>P
inoremap <F5> <C-R>=strftime("%m/%d/%y")<CR>
" }}}

" scrooloose/syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

let g:syntastic_swift_checkers=['swiftlint']
" }}}

" scrooloose/nerdtree {{{
map <leader>n :NERDTreeToggle<CR>
map <leader>j :NERDTreeFind<CR>

let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
" }}}

" ctrlpvim/ctrlp.vim {{{
let g:ctrlp_custom_ignore={
      \ 'dir': 'node_modules\|_site$\|\.git$\|tmp$\|.build$',
      \ 'file': '\.o$\|\.so$\|\.dat$|\.DS_Store$'
      \ }
" }}}

" airblade/vim-gitgutter {{{
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '●'
let g:gitgutter_sign_removed = '━'
let g:gitgutter_sign_removed_first_line = '━'
let g:gitgutter_sign_modified_removed = '┅'

if v:version >= 800
    set signcolumn=yes
else
    let g:gitgutter_sign_column_always=1
endif
" }}}

" ornithocoder/mojave-dark-vim {{{
colorscheme mojave-dark
set background=dark
" }}}
