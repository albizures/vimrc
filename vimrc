set nocompatible " required
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'crusoexia/vim-monokai'
Plugin 'pangloss/vim-javascript'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call  vundle#end()
filetype plugin indent on

set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=1

set clipboard=unnamed
let g:molokai_original = 1
let g:rehash256 = 1
let g:monokai_italic = 1
let g:monokai_thick_border = 1
set regexpengine=1
syntax enable
colorscheme monokai
set invlist
set number
set listchars=eol:$,tab:\|\ ,trail:~,extends:>,precedes:<
set tabstop=2
let g:gitgutter_enabled = 1

let g:gitgutter_sign_column_always = 1
let g:gitgutter_sign_added = '||'
let g:gitgutter_sign_modified = '||'
let g:gitgutter_sign_removed = '||'
let g:gitgutter_sign_removed_first_line = '||'
let g:gitgutter_sign_modified_removed = '||'

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*



let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = '/home/a/.nvm/versions/node/v4.4.3/bin/eslint'


let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
