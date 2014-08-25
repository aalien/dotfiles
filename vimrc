let pascal_delphi="1"

set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax enable

set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set number
set backspace=indent,eol,start

" DoxygenToolkit
let g:DoxygenToolkit_briefTag_pre = "\\brief "
let g:DoxygenToolkit_paramTag_pre = "\\param "
let g:DoxygenToolkit_returnTag = "\\return "
let g:DoxygenToolkit_fileTag = "\\file "
let g:DoxygenToolkit_authorTag = "\\author "
let g:DoxygenToolkit_dateTag = "\\date "
let g:DoxygenToolkit_blockTag = "\\name "
let g:DoxygenToolkit_classTag = "\\class "

"Tab complete
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction

:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
