"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" faster scrolling with shift
nnoremap <S-h> 10h
nnoremap <S-j> 5j
nnoremap <S-k> 5k
nnoremap <S-l> 10l

" PEP 8 standard
set tabstop=4
set softtabstop=4
set shiftwidth=4
" set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set encoding=utf-8 

" python syntax
" let python_highlight_all=1
syntax on

color one-monokai 

" Line numbering
set nu                                                                                                                                                                                                  
"
" auto indent I think?
filetype plugin indent on

"set cursorcolumn
set cursorline

" Make font in Vim like Sublime Text 3
set guifont=Consolas:h10

" line numbers
set number
highlight CursorLineNr guifg=grey

" make backspace behave correctly
set backspace=indent,eol,start

" turn off swp files
set noswapfile
set nobackup
set nowb

" start scrolling when we're 8 lines away from margins
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" Highlight searches
set hlsearch

" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

:set belloff=all
" Make another remap to go to  'def ' shift+n or n  to go to next/ prev function
"  and another 'class ' shift+n or n for class

" replace backslash with forward slash on current line.
noremap <f1> :s/\\/\//g"
" replace forwardslash with backslash on current line.
noremap <f2> :s/\//\\/g"

" count occurences of word under cursor.
noremap * *<C-O>:%s///gn<CR>"
