set shell=/bin/bash
let mapleader = "\<Space>"

set termguicolors
" Color scheme
colorscheme Tomorrow-Night

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'
call plug#end()

" Some basic setup
set number relativenumber
set nocompatible              " be iMproved, required
filetype off                  " required 
set backspace=indent,eol,start
" let g:Powerline_symbols = 'fancy'
let g:NERDSpaceDelims = 1
" let g:python_highlight_all = 1
" let g:python_highlight_space_errors = 0
" let g:python_highlight_indent_errors = 0
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
" set term=xterm-256color
set termencoding=utf-8
execute pathogen#infect()
filetype plugin indent on
set background=dark
set ic
set laststatus=2
set splitright
set splitbelow
set viminfo='20,<1000,s1000
set shell=zsh
set wildmenu
set hlsearch
se bs=2 ru mouse=a cin et ts=2 sw=2 sts=2
inoremap {<CR>  {<CR>}<Esc>O
syntax on

" show column-width marker
set colorcolumn=80

" Replace the default NVIM cursor with the VIM one
set guicursor=

" LaTeX aliases
autocmd Filetype tex inoremap @fig \begin{figure}[H]<Enter>\centering<Enter>\includegraphics[]{}<Enter>\caption{}<Enter>\end{figure}<Esc>kkf[a
autocmd Filetype tex inoremap @pr  \begin{problem}\end{problem}<Esc>o
autocmd Filetype tex inoremap @enum1 \begin{enumerate}<Enter>\item<Enter>\end{enumerate}<Esc>kA<Space>
autocmd Filetype tex inoremap @enuma \begin{enumerate}[label=(\alph*)]<Enter>\item<Enter>\end{enumerate}<Esc>kA<Space>
autocmd Filetype tex inoremap @item \begin{itemize}<Enter>\item<Enter>\end{itemize}<Esc>kA<Space>
autocmd Filetype tex inoremap @tab \begin{tabular}{}<Enter>\end{tabular}<Esc>kf{a


let g:fzf_layout = { 'down': '~20%' }

command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)
command! -bang -nargs=? -complete=dir Buffers call fzf#vim#buffers(<q-args>, <bang>0)

noremap <leader>l :Rg<CR>
nmap <leader>j :Files<CR> 
nmap <leader>k :Buffers<CR>


" Switching tab size from 2 to 4 and vice versa
command T4 se bs=2 ru mouse=a cin et ts=4 sw=4 sts=4
command T2 se bs=2 ru mouse=a cin et ts=2 sw=2 sts=2

" Set Ctrl+J to jumping to the next placeholder
inoremap <C-J> <Esc>/<++><CR><Esc>cf>
nnoremap <C-J> <Esc>/<++><CR><Esc>cf>

" Set Ctrl+F to re-format the C/C++ code using clang-format
map <C-F> :pyf /usr/local/opt/llvm/share/clang/clang-format.py<CR>
map <C-P> ggvG<C-F><C-o>

" Ctrl+H to disable highlight search
vnoremap <C-H> :nohlsearch<CR>
nnoremap <C-H> :nohlsearch<CR>

" <leader><leader> toggles between buffers
nnoremap <leader><leader> <C-^>

" Turn off syntax highlighting for JavaScript, HTML and TeX.
autocmd Filetype javascript setlocal syntax=off
autocmd Filetype html setlocal syntax=off
autocmd Filetype tex setlocal syntax=off

" Enable C++ syntax highlighting for C files
autocmd BufEnter *.c :setlocal filetype=cpp

" autocmd FileType python set softtabstop=2 smarttab

" Set ctag file location
set tags=./tags,tags;$HOME

function! DelTagOfFile(file)
  let fullpath = a:file
  let cwd = getcwd()
  let tagfilename = cwd . "/tags"
  let f = substitute(fullpath, cwd . "/", "", "")
  let f = escape(f, './')
  let cmd = 'sed -i "/' . f . '/d" "' . tagfilename . '"'
  let resp = system(cmd)
endfunction

function! UpdateTags()
  let f = expand("%:p")
  let cwd = getcwd()
  let tagfilename = cwd . "/tags"
  let cmd = 'ctags -a -f ' . tagfilename . ' --c++-kinds=+p --fields=+iaS --extra=+q ' . '"' . f . '"'
  call DelTagOfFile(f)
  let resp = system(cmd)
endfunction

" Set Ctrl+T to updating tags
map <C-T> :call UpdateTags() <CR>

set fsync
luafile $HOME/.config/nvim/lsp-config.lua
