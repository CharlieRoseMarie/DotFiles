if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
set nocompatible
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch'
Plug 'OmniSharp/omnisharp-vim'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'} | Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'vim-syntastic/syntastic'
Plug 'ycm-core/YouCompleteMe', {'do': './install.py --clang-complete --ts-completer', 'for': ['clang', 'rust', 'typescript']}
Plug 'jiangmiao/auto-pairs'
Plug 'venantius/vim-cljfmt'
Plug 'dracula/vim'
Plug 'https://github.com/vim-scripts/paredit.vim'
Plug 'https://github.com/kien/rainbow_parentheses.vim'
Plug 'tpope/vim-fireplace'
Plug 'dsawardekar/wordpress.vim', {'for': 'php'} | Plug 'shawncplus/phpcomplete.vim'
Plug 'jreybert/vimagit'
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'danielmiessler/VimBlog'
Plug 'tpope/vim-sexp-mappings-for-regular-people' | Plug 'guns/vim-sexp' | Plug 'tpope/vim-repeat' | Plug 'tpope/vim-surround'
call plug#end()
set nu
set updatetime=100
set clipboard=unnamedplus
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
noremap <leader>n :lnext<CR>
noremap <leader>p :lprev<CR>

nnoremap <F5> :set rnu!<CR>
nnoremap <F12> :NERDTreeToggle<CR>

set textwidth=0
set wrap
set updatetime=250

nnoremap <leader>gs :Magit<CR>
nnoremap <leader>E :%Eval<CR>
nnoremap <leader>e :Eval<CR>
