set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" vim-airpline plugin. lean & mean status/tyabline for vim that's light as air
Plugin 'vim-airline/vim-airline'

" surround.vim: quoting/parenthisizing made simple
Plugin 'tpope/vim-surround'

" Vastly improved Javascript indentation and syntax support in Vim.
Plugin 'pangloss/vim-javascript'

" Flake8 plugin for Vim
Plugin 'nvie/vim-flake8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

filetype plugin indent on
syntax on

set listchars=tab:\|-,space:·
highlight SpecialKey ctermfg=DarkGrey
set list
set incsearch
set nu

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

