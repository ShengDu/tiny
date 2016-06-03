syntax on
filetype indent plugin on
set ts=4
set expandtab
set shiftwidth=4
set softtabstop=4
set modeline
set background=dark
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set hlsearch
set incsearch
set backspace=indent,eol,start
set fileencodings=utf-8,gb18030,utf-16,big5
set nu
set modeline
set background=dark

" This will set your path variable to current directory (from which you
" launched vim) and to all directories under current directory recursively.
set path=$PWD/**

set mouse=a

" Enable folding with the spacebar
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

let python_highlight_all=1

" Have vim jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Display status line position
set ruler

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

set clipboard=unnamed

inoremap jj <ESC>
let mapleader = ","
