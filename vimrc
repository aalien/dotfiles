execute pathogen#infect()
let pascal_delphi="1"

set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax enable
set ffs=unix,dos,mac

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

set statusline=%F       "full path of the filename
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2        "always show statusline

" Highlight word under cursor by double clicking
nnoremap <silent> <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>

" Add ranger as a file chooser in vim
" Compatible with ranger 1.4.2 through 1.6.*
fun! RangerChooser()
    let tmpfile = tempname()
    let dir = expand("%:p:h")
    exec 'silent !ranger --choosefile='.tmpfile dir
    if filereadable(tmpfile)
        exe 'edit' readfile(tmpfile)[0]
        call delete(tmpfile)
    endif
    redraw!
endfun
map ,r :call RangerChooser()<CR>
