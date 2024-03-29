" set color scheme
color vscode

" set dark version of color scheme
set background=dark

" syntax highlighting
syntax on

" PEP8 standard, indent using 4 spaces
set tabstop=4
set softtabstop=4

" when shifting, indent using 4 spaces 
set shiftwidth=4

" convert tab to space
set expandtab

" new lines inherit indentation of previous
set autoindent

"
set fileformat=unix

" use an encoding which supports unicode
set encoding=utf-8 

" enable indentation rules that are file type specific
filetype plugin indent on

" highlight line where cursor is
set cursorline

" set font
set guifont=Consolas:h11

" show line numbers
set number

" make backspace behave correctly
set backspace=indent,eol,start

" turn off swp files
set noswapfile
set nobackup
set nowb

" number of screen lines to keep above and below the cursor
set scrolloff=8

" number of screen columns to keep to the left and right of cursor
set sidescrolloff=15
set sidescroll=1

" highlight searches
set hlsearch

" ignore case when searching
set ignorecase

" automatically switch search to case-sensitive when 
" search query contains uppercase letter
set smartcase

" incremental search that shows partial matches
set incsearch

" no sound alert when hitting EOF
:set belloff=all

" comment toggler
let s:comment_map = { 
    \   "c": '\/\/',
    \   "cpp": '\/\/',
    \   "go": '\/\/',
    \   "java": '\/\/',
    \   "javascript": '\/\/',
    \   "lua": '--',
    \   "scala": '\/\/',
    \   "php": '\/\/',
    \   "python": '#',
    \   "ruby": '#',
    \   "rust": '\/\/',
    \   "sh": '#',
    \   "desktop": '#',
    \   "fstab": '#',
    \   "conf": '#',
    \   "profile": '#',
    \   "bashrc": '#',
    \   "bash_profile": '#',
    \   "mail": '>',
    \   "eml": '>',
    \   "bat": 'REM',
    \   "ahk": ';',
    \   "vim": '"',
    \   "tex": '%',
    \ }

function! ToggleComment()
    if has_key(s:comment_map, &filetype)
        let comment_leader = s:comment_map[&filetype]
        if getline('.') =~ "^\\s*" . comment_leader . " " 
            " Uncomment the line
            execute "silent s/^\\(\\s*\\)" . comment_leader . " /\\1/"
        else 
            if getline('.') =~ "^\\s*" . comment_leader
                " Uncomment the line
                execute "silent s/^\\(\\s*\\)" . comment_leader . "/\\1/"
            else
                " Comment the line
                execute "silent s/^\\(\\s*\\)/\\1" . comment_leader . " /"
            end
        end
    else
        echo "No comment leader found for filetype"
    end
endfunction

" ctrl+c to comment out selected lines
nnoremap <C-c> :call ToggleComment()<cr>
vnoremap <C-c> :call ToggleComment()<cr>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" faster scrolling with shift in normal mode
nnoremap <S-h> 10h
nnoremap <S-j> 5j
nnoremap <S-k> 5k
nnoremap <S-l> 10l

" faster scrolling with shift in visual mode
vnoremap <S-h> 10h
vnoremap <S-j> 5j
vnoremap <S-k> 5k
vnoremap <S-l> 10l

" press space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" limit the files searched for auto-completes
set complete-=i

" don't update the screen during macro and script execution
set lazyredraw

" always try to show a paragraphs last line
set display+=lastline

" avoid wrapping a line in the middle of a word
set linebreak

" enable line wrapping
set wrap

" enable mouse for scrolling and resizing
set mouse=a

" set windows title reflecting current open file
set title

" increase undo limit
set history=1000

" use ctrl+c to copy to clipboard
vmap <C-c> "+y

