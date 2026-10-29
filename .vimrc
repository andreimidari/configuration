syntax on 
set encoding=utf-8

set copyindent
set autoindent

filetype on 
filetype plugin on 
filetype indent on 

set nocompatible

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

set number
set relativenumber
colorscheme industry

set shiftwidth=4
set tabstop=4
set expandtab

set scrolloff=10

set backspace=indent,eol,start

set nowrap

set nohlsearch
set incsearch
set ignorecase
set smartcase

set ruler
set showcmd
set showmode
set showmatch

set history=100

set termguicolors

set wildmenu 
set wildmode=list:longest
set wildoptions=
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
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
