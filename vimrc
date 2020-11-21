set backspace=2
set colorcolumn=+1
set foldcolumn=1
set modelines=1
set number
set ruler
set scrolloff=2
set wildmenu

set mouse=a
set ttymouse=xterm2

set tabstop=2
set softtabstop=2
set shiftwidth=2
autocmd Filetype python setlocal tabstop=4 softtabstop=4 shiftwidth=4
set smartindent
set expandtab

set hlsearch
set incsearch
nnoremap <space> :noh<return>

set list
set listchars=tab:▸\ ,trail:·

colorscheme desert
syntax on

filetype plugin indent on
runtime macros/matchit.vim

command -nargs=* K :make! <args>
