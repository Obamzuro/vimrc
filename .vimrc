set number
set list
set listchars=eol:$,tab:>-
syntax on
color delek
map <C-n> :NERDTreeToggle<CR>
set foldenable
set foldmethod=syntax
set foldlevel=0
set foldnestmax=1
set showcmd
" to auto-run nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" for vimplug package manager
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
"Plug 'nathanaelkane/vim-indent-guides'
call plug#end()
