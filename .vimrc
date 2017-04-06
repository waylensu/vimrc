set nocompatible              " be iMproved, required
filetype off                  " required

syntax enable
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'Yggdroot/indentLine'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fholgado/minibufexpl.vim'
call vundle#end()            " required
filetype plugin indent on    " required
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set expandtab 
set tabstop=4 
set shiftwidth=4 
set softtabstop=4 
"let g:ycm_global_ycm_extra_conf = '/Users/wing/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"
let g:indentLine_enabled = 1

nmap <F3> :NERDTreeToggle<cr>
nmap <F4> :TagbarToggle<CR>
set nu

set foldenable 
source ~/.vim/script/autostart.vimrc
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

set background=dark
colorscheme solarized
"comments 89508d
set hidden
nnoremap <silent> <C-Left> :bn<CR>
nnoremap <silent> <C-Right> :bp<CR>
nnoremap <silent> <C-Up> :bd<CR>
nnoremap <silent> <C-Down> :n .<CR>
