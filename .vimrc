set nocompatible              " be iMproved, required
filetype off                  " required

colorscheme basic-dark
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/ListToggle'
Plugin 'majutsushi/tagbar'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set background=light
set expandtab 
set tabstop=4 
set shiftwidth=4 
set softtabstop=4 
"let g:ycm_global_ycm_extra_conf = '/Users/wing/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"
let g:indent_guides_enable_on_vim_startup = 0
let g:indentLine_enabled = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level  = 2 
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black  ctermbg=darkgrey
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=black ctermbg=darkgrey

nmap <F3> :NERDTreeToggle<cr>
nmap <F4> :Tlist<cr>
nmap <F8> :TagbarToggle<CR>
set nu

set foldenable 
source ~/.vim/rc/autostart.vimrc
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
