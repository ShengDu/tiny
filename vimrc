syntax on
filetype indent plugin on
set ts=4
set expandtab
set shiftwidth=4
set softtabstop=4
set modeline
set background=dark
"autocmd FileType python setlocal foldmethod=indent

set hlsearch
set incsearch
set backspace=indent,eol,start
set fileencodings=utf-8,gb18030,utf-16,big5
"set nu

set mouse=a

"Find trailing whitespace
highlight ExtraWhitespace ctermbg=yellow guibg=yellow
match ExtraWhitespace '\s\+$'

" Strip trailing whitespace when writing buffer
"autocmd BufWritePre <buffer> :%s/\s\+$//e

" Defind command to trim trailing whitespace
command RTW :%s/\s\+$//e

" Define pylint as compiler of *.py
au FileType python set makeprg=pylint\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\ {obj}\ {msg}\"\ %:p
au FileType set errorformat=%f:%l:\ %m

inoremap jj <ESC>
let mapleader = ","
