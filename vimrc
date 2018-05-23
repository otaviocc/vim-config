" Plugged {{{
call plug#begin('~/.vim/plugged')
Plug 'keith/swift.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gabesoft/vim-ags'
Plug 'sheerun/vim-polyglot'
Plug 'arcticicestudio/nord-vim'
Plug 'reedes/vim-colors-pencil'
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
set nowrap
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
au BufNewFile,BufRead Podfile,*.podspec setlocal makeprg=bundle\ exec\ pod\ install\ --repo-update
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

" scrooloose/nerdcommenter {{{
let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhitespace=1
let g:NERDCompactSexyComs=1
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

" vim-airline/vim-airline {{{
set laststatus=2
let g:airline_powerline_fonts=0 "1
let g:bufferline_echo=0
" }}}

" arcticicestudio/nord-vim {{{
" colorscheme nord
" set background=dark
" let g:airline_theme='nord'
" }}}

" macOS Basic {{{
" colorscheme default
" set background=light
" let g:airline_theme='light'
" }}}

" reedes/vim-colors-pencil {{{
colorscheme pencil
set background=light
let g:airline_theme='pencil'
let g:pencil_neutral_code_bg=1
let g:pencil_higher_contrast_ui=1
let g:pencil_gutter_color=0
" }}}
