set nocompatible " be iMproved

filetype plugin indent on

" -- Misc options --

let mapleader = ","

syntax on
let g:rehash256 = 1

set encoding=utf-8
set showcmd
" set colorcolumn=81                           " line to show 81 character mark
" set cursorline                               " shows the horizontal cursor line

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

set number

nmap <leader>ev :vsplit $MYVIMRC<cr>         " mapping to edit my vimrc quickly
nmap <leader>sv :source $MYVIMRC<cr>         " mapping to source my vimrc quickly

" -- Splits --

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" -- Whitespace options --

" Show invisibles
set listchars=tab:▸\ ,eol:¬
set list!

" Trailing whitespace

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Indent with 2 spaces always
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

set laststatus=2 " Always show the statusline

" -- CtrlP --

let g:ctrlp_map = '<leader>p'

let g:ctrlp_follow_symlinks = 2
if len(argv())==0 || argv()[0] == '.'
  " If I open a directory, assume I want to hard set a working path
  let g:ctrlp_working_path_mode = ''
endif

" -- OmniComplete --

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
