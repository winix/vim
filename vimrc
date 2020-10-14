call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'kien/ctrlp.vim'
Plug 'ervandew/supertab'

call plug#end()

" CtrlP
let g:ctrlp_working_path_mode = 0
let g:ctrlp_by_filename = 1
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\.git$\|\.hg$\|\.svn$\|target$',
	\ 'file': '\.exe$\|\.so$\|\.dll$',
	\ 'link': 'some_bad_symbolic_links',
	\ }
