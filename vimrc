call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'kien/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'
Plug 'preservim/nerdtree'
Plug 'othree/xml.vim'
Plug 'tomasr/molokai'
Plug 'godlygeek/tabular'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'andreshazard/vim-freemarker'

call plug#end()

set autoindent
set breakindent
set backupcopy=yes
set clipboard=unnamed
set ambiwidth=double
set cmdheight=1
set fileencoding=utf-8
set fileencodings=utf-8,gb18030,big5,utf-16le,utf-16be,default,latin1
set fileformat=unix
set fileformats=unix,dos,mac
set helplang=cn
set hlsearch
set mouse=a
set nobackup
set wrap
set ruler

syntax on

colorscheme molokai

" jump to the last position
if has("autocmd")
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" CtrlP
let g:ctrlp_working_path_mode = 0
let g:ctrlp_by_filename = 1
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\.git$\|\.hg$\|\.svn$\|target$',
	\ 'file': '\.exe$\|\.so$\|\.dll$',
	\ 'link': 'some_bad_symbolic_links',
	\ }

" vim-sneak
let g:sneak#label = 1

" txt2tags
autocmd BufNewFile,BufRead *.t2t set ft=txt2tags
autocmd BufNewFile *.t2t 0r ~/.vim/skeleton/txt2tags.t2t
