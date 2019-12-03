set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'junegunn/fzf'
Plugin 'scrooloose/nerdtree'
Plugin 'https://github.com/airblade/vim-gitgutter.git'
Plugin 'vim-syntastic/syntastic'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'venantius/vim-cljfmt'
Plugin 'dracula/vim'
Plugin 'https://github.com/vim-scripts/paredit.vim'
Plugin 'https://github.com/kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-fireplace'
call vundle#end()
syntax on
filetype plugin indent on
set nu
set updatetime=100
set clipboard=unnamed
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_mono = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
color dracula

let g:syntastic_lua_checkers = ["luac", "luacheck"]
let g:syntastic_lua_luacheck_args = "--no-unused-args --codes" 
noremap -n :lnext<CR>
noremap -p :lprev<CR>

nnoremap <F5> :set rnu!<CR>
nnoremap <F12> :NERDTreeToggle<CR>
