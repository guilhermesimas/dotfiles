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

" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'

" vim-airpline plugin. lean & mean status/tyabline for vim that's light as air
Plugin 'vim-airline/vim-airline'

" surround.vim: quoting/parenthisizing made simple
Plugin 'tpope/vim-surround'

" Flake8 plugin for Vim
Plugin 'nvie/vim-flake8'

" Vim plugin that displays tags in a window, ordered by scope
Plugin 'majutsushi/tagbar'

" A code-completion engine for Vim
Plugin 'valloric/youcompleteme'

" autopep8 plugin for Vim
Plugin 'tell-k/vim-autopep8'

" syntax highlighting for Groovy programming language
Plugin 'vim-scripts/groovy.vim'

" Maintains a history of previous yanks, changes and deletes
Plugin 'vim-scripts/YankRing.vim'

" enable repeating supported plugin maps with '.'
Plugin 'tpope/vim-repeat'

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

set clipboard=unnamedplus

set updatetime=500

nnoremap  :YcmCompleter GoTo<CR>
