
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
"Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'spf13/vim-colors'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'rhysd/conflict-marker.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-scripts/sessionman.vim'
Plugin 'matchit.zip'
Plugin 'powerline/fonts'
Plugin 'bling/vim-bufferline'
Plugin 'easymotion/vim-easymotion'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'flazz/vim-colorschemes'
Plugin 'mbbill/undotree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'reedes/vim-litecorrect'
Plugin 'reedes/vim-textobj-sentence'
Plugin 'reedes/vim-textobj-quote'
Plugin 'reedes/vim-wordy'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-commentary'
Plugin 'godlygeek/tabular'
Plugin 'luochen1990/rainbow'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'elzr/vim-json'
Plugin 'groenewege/vim-less'
Plugin 'pangloss/vim-javascript'
Plugin 'briancollins/vim-jst'
Plugin 'kchmck/vim-coffee-script'
Plugin 'amirh/HTML-AutoCloseTag'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'tpope/vim-haml'
Plugin 'mattn/emmet-vim'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

syntax enable
colorscheme monokai
set nu
set backspace=2
set encoding=utf-8

let g:ycm_filetype_blacklist = {'python':1}
let g:ycm_filetype_specific_completion_to_disable = {'python': 1}
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
set completeopt=longest,menu
let g:ycm_confirm_extra_conf = 0



let g:kite_supported_languages = ['python', 'javascript', 'go']
set completeopt+=menuone   " show the popup menu even when there is only 1 match
set completeopt+=noinsert  " don't insert any text until user chooses a match
set completeopt-=longest   " don't insert the longest common text
set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2  " always display the status line