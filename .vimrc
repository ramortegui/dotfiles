packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})
"
" " Plugins.
call minpac#add('vim-jp/syntax-vim-ex')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-markdown')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-commentary')
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')
call minpac#add('mileszs/ack.vim')
call minpac#add('elixir-editors/vim-elixir')
call minpac#add('janko-m/vim-test')
call minpac#add('jgdavey/tslime.vim')
"
" " Load the plugins right now. (optional)

" minpac commands:
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

syntax on
filetype off
filetype plugin indent on

set nocompatible
set modelines=0
set rnu
set ruler
set encoding=utf-8
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set ttyfast
set laststatus=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim test
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let test#strategy = "tslime" " Use Send_to_Tmux() method in tslime.vim for tests
nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>ts :TestSuite<CR>
nnoremap <leader>tl :TestLast<CR>
nnoremap <leader>tv :TestVisit<CR>

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " tslime
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

vmap <leader>rr <Plug>SendSelectionToTmux

noremap <Leader>s :update<CR>

