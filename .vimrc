set number relativenumber
set nocompatible              " be iMproved, required
filetype off                  " required 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'octol/vim-cpp-enhanced-highlight'
call vundle#end()
set backspace=indent,eol,start
let g:Powerline_symbols = 'fancy'
let g:NERDSpaceDelims = 1
let python_highlight_all = 1
let python_highlight_space_errors = 0
let python_highlight_indent_errors = 0
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
" set term=xterm-256color
set termencoding=utf-8
execute pathogen#infect()
inoremap kj <Esc>
nnoremap <C-t> :tabnew+<Enter>
filetype plugin indent on
syntax on
set background=dark
set ic
set laststatus=2
set splitright
set splitbelow
set viminfo='20,<1000,s1000
set shell=zsh
set wildmenu
set hlsearch
se bs=2 ru mouse=a cin et ts=4 sw=4 sts=4
inoremap {<CR>  {<CR>}<Esc>O
colorscheme Tomorrow-Night
set guicursor=

autocmd Filetype tex inoremap @fig \begin{figure}[H]<Enter>\centering<Enter>\includegraphics[]{}<Enter>\caption{}<Enter>\end{figure}<Esc>kkf[a
autocmd Filetype tex inoremap @pr  \begin{problem}\end{problem}<Esc>o
autocmd Filetype tex inoremap @enum \begin{enumerate}<Enter>\item<Enter>\end{enumerate}<Esc>kA<Space>
autocmd Filetype tex inoremap @enuma \begin{enumerate}[label=(\alph*)]<Enter>\item<Enter>\end{enumerate}<Esc>kA<Space>
autocmd Filetype tex inoremap @item \begin{itemize}<Enter>\item<Enter>\end{itemize}<Esc>kA<Space>

command Tab4 se bs=2 ru mouse=a cin et ts=4 sw=4 sts=4
command Tab2 se bs=2 ru mouse=a cin et ts=2 sw=2 sts=2

command Format !clang-format -i -style=Google % 

" autocmd Filetype cpp command Format :w | !clang-format -i -style=Google % | :e
" highlight CursorLineNr ctermfg=grey
" autocmd Filetype html setlocal ts=2 sts=2 sw=2
" autocmd Filetype cpp setlocal ts=4 sts=4 sw=4
" autocmd Filetype js setlocal ts=2 sts=2 sw=2
" autocmd Filetype py setlocal ts=4 sts=4 sw=4
