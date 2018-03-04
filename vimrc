" Plugged {{{
call plug#begin('~/.vim/plugged')
Plug 'keith/swift.vim'
Plug 'keith/tmux.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'arcticicestudio/nord-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'
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
" }}}

" Environment (GUI) {{{
if has("gui_running")
    set guioptions-=rL
    set guifont=Menlo\ Regular:h13
endif
" }}}

" git commit messages {{{
au FileType gitcommit setlocal tw=75
" }}}

" CocoaPods {{{
au BufNewFile,BufRead Podfile,*.podspec set filetype=ruby
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

" NERDTree {{{
map <leader>n :NERDTreeToggle<CR>
map <leader>j :NERDTreeFind<CR>
let NERDTreeIgnore = ['\.DS_Store', '\~$', '\.swp']
" }}}

" NERDCommenter {{{
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCompactSexyComs = 1
" }}}

" ctrlp {{{
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|tmp$\|.build$',
      \ 'file': '\.o$\|\.so$\|\.dat$|\.DS_Store$'
      \ }
" }}}

" git gutter {{{
if v:version >= 800
    set signcolumn=yes
else
    let g:gitgutter_sign_column_always=1
endif
" }}}

" airline {{{
set laststatus=2
let g:airline_powerline_fonts = 0 "1
let g:bufferline_echo = 0
" }}}

" pencil color scheme {{{
" colorscheme pencil
" set background=light
" let g:airline_theme='pencil'
" let g:pencil_neutral_code_bg = 1
" let g:pencil_higher_contrast_ui = 1
" let g:pencil_gutter_color = 0
" }}}

" nord color scheme {{{
colorscheme nord
set background=dark
let g:airline_theme='nord'
" }}}

" OSX Terminal's default color scheme {{{
" set background=light
" let g:airline_theme='aurora'
" }}}

" one color scheme {{{
" let g:onedark_termcolors = 16
" let g:onedark_terminal_italics = 0
" let g:airline_theme='onedark'
" set background=dark
" colorscheme onedark
" }}}

" dracula {{{
" let g:airline_theme='dracula'
" set background=dark
" colorscheme dracula
" }}}

" solarized light {{{
" let g:airline_theme='solarized"
" let g:solarized_termcolors = 256
" let g:solarized_termtrans = 1
" let g:solarized_italic = 0
" let g:solarized_bold = 0
" let g:solarized_underline = 0
" set background=light
" colorscheme solarized
" }}}

