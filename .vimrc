set nocompatible
set encoding=utf-8
set history=100
set autoread

syntax on 
filetype on 
filetype plugin on 
filetype indent on 

set autoindent
set copyindent
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start

set number
set relativenumber
set ruler
set showcmd
set showmode
set showmatch
set scrolloff=10
set nowrap

set termguicolors
colorscheme industry

set incsearch
set nohlsearch
set ignorecase
set smartcase

set wildmenu 
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" set pastetoggle=<M-c>
nnoremap <M-c> : call TogglePasteMode()<CR>

function! TogglePasteMode()
	if &paste
		set nopaste
		echo "Paste mode OFF"
	else
		set paste
		echo "Paste mode ON"
	endif		
endfunction

set laststatus=2
set statusline=
set statusline+=\ 
set statusline+=%f
set statusline+=\ %m
set statusline+=%=
set statusline+=%y
set statusline+=\ [%{&fileencoding==#''?&encoding:&fileencoding}]
set statusline+=\ [%{&fileformat}]
set statusline+=\ %p%%
set statusline+=\ %l:%c 
set statusline+=\ 

" Navigate completion suggestions with Alt+j / Alt+k
" inoremap <silent><expr> <M-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-n>"
" inoremap <silent><expr> <M-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-p>"

" Confirm completion with Enter; otherwise insert a newline
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#select_confirm() : "\<CR>"

" Trigger completion manually
inoremap <silent><expr> <M-/> coc#refresh()


call plug#begin()

    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
