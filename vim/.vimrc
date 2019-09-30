" .vimrc


" general
set colorcolumn=80
set cursorline
set nowrap
set scrolloff=3
syntax on


" indentation
filetype indent plugin on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
" html: indentation with 1 space
autocmd Filetype html setlocal shiftwidth=1 softtabstop=1 tabstop=1
" xml: indentation with 1 space
autocmd Filetype xml setlocal shiftwidth=1 softtabstop=1 tabstop=1
" yaml: indentation with 2 spaces
autocmd Filetype yaml setlocal shiftwidth=2 softtabstop=2 tabstop=2


" status line
set laststatus=2
set statusline=%f\ %y%h%m%r%=%c,%l/%L\ %P


" search
set ignorecase
set smartcase
set incsearch
set hlsearch


" color scheme
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized


" EOF
