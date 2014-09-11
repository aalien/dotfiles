let pascal_delphi="1"

set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax enable

set shiftwidth=4
set softtabstop=4
set ignorecase
set smartcase

set expandtab
set smarttab
set autoindent
set smartindent
set number
set backspace=indent,eol,start
set showmatch

colorscheme grb256
set background=dark

let mapleader=","

if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set guifont=DejaVu\ Sans\ Mono\ 8
    set lines=40
    set columns=120
endif

set completeopt=menuone
let g:SuperTabDefaultCompletionType = "context"
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = "0"

let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'

autocmd BufRead *.ptl set ft=python
let g:syntastic_check_on_open = 1
let g:syntastic_python_pyflakes_exec = '/usr/bin/pyflakes-python2'
let g:syntastic_python_pep8_exec = '/usr/bin/pep8-python2'
let g:syntastic_python_checkers = ['pyflakes', 'pep8']

nmap <F8> :TagbarToggle<CR>

" DoxygenToolkit
let g:DoxygenToolkit_briefTag_pre = "\\brief "
let g:DoxygenToolkit_paramTag_pre = "\\param "
let g:DoxygenToolkit_returnTag = "\\return "
let g:DoxygenToolkit_fileTag = "\\file "
let g:DoxygenToolkit_authorTag = "\\author "
let g:DoxygenToolkit_dateTag = "\\date "
let g:DoxygenToolkit_blockTag = "\\name "
let g:DoxygenToolkit_classTag = "\\class "

