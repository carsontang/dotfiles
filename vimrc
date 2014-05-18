"" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#infect()

" CommandT

" \ff -> open fuzzy finder
map <silent> <leader>ff :CommandT<CR>

" close fuzzy finder with ESC or ^C
let g:CommandTCancelMap = ['<ESC>', '<C-c>']

" no compatibility with Vi
set nocompatible

" allow backspace over indent, EOL, start of insert
set backspace=indent,eol,start

" place swap files in /tmp
set dir=/tmp/
 
" hide current file if it has unsaved changes
" and you're switching to a different file
set hidden

" highlight searched term
set hlsearch

" ignore case in search patterns
set ignorecase

" override ignorecase if search pattern contains upper case
set smartcase

" incremental search
set incsearch

" show line numbers in left margin
set number

" mininum of 5 lines above and below cursor
set scrolloff=5

" cursor will briefly jump to matching brace
set showmatch

" lines do not wrap until next line 
set nowrap

" display row & column of cursor
set ruler

" wrap text to new line when 80 chars are exceeded
set textwidth=80

" set tab to 2 spaces
set tabstop=2

" indentation with extra level of indentation in some cases, like C files
set smartindent
