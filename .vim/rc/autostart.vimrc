autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py exec ":call SetTitle()" 
func SetTitle() 
    if &filetype == 'sh' 
        call setline(1,"\#!/bin/bash") 
        call setline(2,"")
        call setline(3,"")
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call setline(2,"# coding=utf-8")
        call setline(3,"")
    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call setline(2,"# encoding: utf-8")
        call setline(3,"")
    endif

    if &filetype == 'sh' || &filetype == 'python' || &filetype == 'ruby'
        call setline(4,"\# =============================================================") 
        call append(line(".")+3, "\#  File Name : ".expand("%")) 
        call append(line(".")+4, "\#  Author : waylensu") 
        call append(line(".")+5, "\#  Mail : waylensu@163.com") 
        call append(line(".")+6, "\#  Created Time : ".strftime("%c")) 
        call append(line(".")+7, "\# =============================================================") 
        call append(line(".")+8, "") 
    else 
        call setline(1, "/* ==============================================================") 
        call append(line("."), "    > File Name: ".expand("%")) 
        call append(line(".")+1, "  > Author: waylensu") 
        call append(line(".")+2, "  > Mail: waylensu@163.com") 
        call append(line(".")+3, "  > Created Time: ".strftime("%c")) 
        call append(line(".")+4, " ============================================================= */") 
        call append(line(".")+5, "")
    endif

    if &filetype == 'python' 
        call append(line(".")+9, "from __future__ import (division,absolute_import,print_function,unicode_literals)")
        call append(line(".")+10, "")
    endif

    if expand("%:e") == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
    if expand("%:e") == 'h'
        call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
        call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
        call append(line(".")+8, "#endif")
    endif
    if &filetype == 'java'
        call append(line(".")+6,"public class ".expand("%:r"))
        call append(line(".")+7,"")
    endif
endfunc 
autocmd BufNewFile * normal G
