" turn hybrid line numbers on
set number relativenumber
set nu rnu

" permanent undo
set undodir=~/.vimdid
set undofile
set noswapfile

" good colors
syntax enable
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

" good indent
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" other
set incsearch
set showcmd

set scrolloff=5

" remember last pos in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
