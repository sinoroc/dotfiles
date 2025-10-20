" .vimrc


" undercurl
" This can help make undercurls work (Gnome Terminal, Ptyxis)
let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"


" general
set cursorline
set scrolloff=3


" line breaks
set colorcolumn=80
set linebreak
set nolist
set showbreak=…
set wrap


" indentation
filetype indent plugin on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
" html: indentation with 1 space
autocmd Filetype html setlocal shiftwidth=1 softtabstop=1 tabstop=1
" javascript: indentation with 2 spaces
autocmd Filetype javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2
" json: indentation with 2 spaces
autocmd Filetype json setlocal shiftwidth=2 softtabstop=2 tabstop=2
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


" ALE
let g:ale_completion_enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_format = '[%severity%][%linter%]%[code]% %s'
let g:ale_echo_msg_info_str = 'I'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_fix_on_save = 1
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'python': ['isort', 'yapf']}
let g:ale_linters = {'python': ['mypy', 'pycodestyle', 'pydocstyle', 'pylint', 'pyls']}
let g:ale_python_pyls_executable = 'pylsp'
try
    packadd! ale
catch
endtry


" color scheme
try
    colorscheme solarized
catch
endtry


" highlights
function! Highlight() abort
    highlight Comment cterm=italic
endfunction
autocmd ColorScheme * call Highlight()


" syntax
syntax on


" EOF
