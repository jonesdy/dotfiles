" Stuff for Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree.git'
Plugin 'bling/vim-airline'
Plugin 'jistr/vim-nerdtree-tabs'

call vundle#end()
filetype plugin indent on

set smartindent
set tabstop=3
set shiftwidth=3
set expandtab
syntax on
set number
set laststatus=2
set backspace=indent,eol,start

set omnifunc=syntaxcomplete#Complete

let g:EclimCompletionMethod = 'omnifunc'

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

let g:nerdtree_tabs_open_on_console_startup = 1

let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled = 1

" Close omni-completion tip after selection is made
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
