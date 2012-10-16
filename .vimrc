set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'


set number

syntax on

colorscheme default
set background=light

set sw=4
set ts=4
set tw=80

set autoindent
set showmatch
set hlsearch
set incsearch


set expandtab
set smarttab

set ignorecase
set grepprg=grep\ -niH\ $*

set sc


filetype plugin on
filetype indent on

let g:tex_flavor='latex'
set iskeyword+=:

set pastetoggle=<F11>

map <F2> :!make<CR>
map <F3> :!make clean<CR>

nmap <F6> <Plug>DiffChangesDiffToggle
nmap <F7> <Plug>DiffChangesPatchToggle

map <silent> <F10> <Esc>:qa<CR>
imap <silent> <F10> <Esc>:qa<CR>

map <silent> <F12> <Esc>:let &number=1-&number<CR>
imap <silent> <F12> <Esc>:let &number=1-&number<CR>li

nmap <C-l> gt
nmap <C-h> gT
nmap <C-t> :tabnew<CR>

" make gm go to the middle of the line by characters, not by screen
map gm :call cursor(0, virtcol('$')/2)<CR>

" map ii to ESC in insert mode "ii" will never actually occur in a word
inoremap ii <Esc>
" map jj to ESC + doublecolon in insert mode (same reason) 
inoremap jj <Esc>:

highlight MatchParen ctermbg=4

if has("gui_running")
   " Remove Toolbar
   set guioptions-=T
endif

" Tab related stuff
nnoremap <silent> <C-Tab> :tabnext<CR>
nnoremap <silent> <C-S-Tab> :tabprevious<CR>
imap <C-Tab> <ESC>:tabnext<CR>
imap <C-S-Tab> <ESC>:tabprevious<CR>

imap <D-s> <ESC>:w<CR>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

"keep backup files in central directory (dirs have to exist)
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" No error bells
set noeb vb t_vb=

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><S-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><S-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Keymappings for fuzzyfinder
nnoremap <silent><C-S-t> :FufCoverageFile<CR>
imap <silent><C-S-t> <Esc><C-S-t>
let fuf_keyOpen = '<C-CR>'
let fuf_keyOpenTabpage = '<CR>'

"Taglist stuff
map <F6> :TlistOpen<CR>/
imap <F6> <Esc><F6>
let Tlist_Show_One_File=1
let Tlist_Close_On_Select=1

"Temporary build mappings
nmap <C-S-d> :!scripts/deploy.sh<CR>
imap <C-S-d> <ESC><C-S-d>
nmap <C-S-c> :!make clean<CR>

"Movement in wrapped lines
noremap <buffer> <silent> j gj
noremap <buffer> <silent> k gk
noremap <buffer> <silent> 0 g0
noremap <buffer> <silent> $ g$


" word wrap without automatic linebreaks
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0

"CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

"Map autocomplete to ctrl+space
imap <C-Space> <C-n>
