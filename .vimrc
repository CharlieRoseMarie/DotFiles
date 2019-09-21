set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'
Bundle 'OmniSharp/omnisharp-vim'
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'https://github.com/airblade/vim-gitgutter.git'
call vundle#end()
syntax on
filetype plugin indent on
set nu
set updatetime=100
set clipboard=unnamed
