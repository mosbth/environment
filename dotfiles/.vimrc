" netrw
set nocp               " 'compatible' is not set
filetype plugin on     " plugins are enabled
if version >= 600
  filetype plugin indent on
endif

" Set tabwidth and softtabs
" retab
set expandtab tabstop=2 shiftwidth=2

" syntax highlighting
syntax on

" Use the mouse
set mouse=a

" Use or no use line numbers
set number
"set nonumber

" always save when swapping through windows
set autowrite

" make backspace work
set backspace=indent,eol,start

" search with flexible ignore case
" /copyright\c or /copyright\C to override
set smartcase

" spelling
" languages: http://ftp.vim.org/vim/runtime/spell/
set spelllang=sv
"set spell
"set nospell
"setlocal spell spelllang=en

" wrap text
set wrap
set linebreak

" make unicode work
set encoding=utf-8

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

" display syntax for markdown
au BufRead,BufNewFile *.md set filetype=markdown

" display statusbar
set noruler
set laststatus=2
"set statusline=%1*%-25.80f%*\       "tail of the filename
set statusline=%f
"set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file


"hi User1 guifg=#eea040 guibg=#222222
"hi User2 guifg=#dd3333 guibg=#222222
"hi User3 guifg=#ff66ff guibg=#222222
"hi User4 guifg=#a0ee40 guibg=#222222
"hi User5 guifg=#eeee40 guibg=#222222

"set statusline=
"set statusline +=%1*\ %n\ %*            "buffer number
"set statusline +=%5*%{&ff}%*            "file format
"set statusline +=%3*%y%*                "file type
"set statusline +=%4*\ %<%F%*            "full path
"set statusline +=%2*%m%*                "modified flag
"set statusline +=%1*%=%5l%*             "current line
"set statusline +=%2*/%L%*               "total lines
"set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor

"Key mappings
:map <Up> gk
:map k gk
:map <Down> gj
:map j gj

