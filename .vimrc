syntax enable
filetype plugin on
set number

set nocompatible
" filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'fatih/vim-go'

" au FileType go
nmap <Leader>s <Plug>(go-implements)
" au FileType go
nmap <Leader>r <Plug>(go-run)
" au FileType go
nmap <Leader>t <Plug>(go-test)
call vundle#end()
filetype plugin indent on


" Tabs
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Indent
set autoindent

" Fix Ctrl + Arrow keys
map <Esc>[1;5A <C-Up>
map <Esc>[1;5B <C-Down>
map <Esc>[1;5C <C-Right>
map <Esc>[1;5D <C-Left>
map <C-Left> <C-W><Left>
map <C-Right> <C-W><Right>
map <C-Up> <C-W><Up>
map <C-Down> <C-W><Down>

imap <C-s> <Esc>:w<CR>i

" Pathogen
execute pathogen#infect()
call pathogen#helptags()

" Trim whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Highlight column 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/



