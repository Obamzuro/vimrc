set number
set list
set tabstop=4
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

" //call plug#begin('~/.vim/plugged')
" //Plug 'scrooloose/nerdtree'

"Plug 'nathanaelkane/vim-indent-guides'
" //call plug#end()
execute pathogen#infect()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" asm helpers for syntastic
autocmd BufNewFile,BufRead *.asm set filetype=nasm
" ~/.vim/bundle/syntastic/syntax_checkers/nasm/nasm.vim - add -f elf64 to args for nasm

filetype plugin indent on
syntax on
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
