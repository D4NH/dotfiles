execute pathogen#infect()
filetype plugin indent on

"NERDTree settings
map <F1> :NERDTreeToggle<CR>

" Visual
syntax on                           " Enable highlighting
set number                          " Show line numbers
set linebreak                       " Break lines at word (requires Wrap lines)
set showbreak=+++                   " Wrap-broken line prefix
set showmatch                       " Highlight matching brace
set visualbell                      " Use visual bell (no beeping)
set ruler                           " Show row and column ruler information
set showtabline=2                   " Show tab bar
set laststatus=2                    " Always show airline bar
set cmdheight=1                     " Command line height
" set mouse=a                         " Simple mouse support

let base16colorspace=256
colorscheme base16-default-dark
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1

" Search
set smartcase                       " Enable smart-case search
set ignorecase                      " Always case-insensitive
set incsearch                       " Searches for strings incrementally

" Tabs
filetype indent on
set nowrap
set autoindent                      " Auto-indent new lines
set expandtab                       " Use spaces instead of tabs
set shiftwidth=4                    " Number of auto-indent spaces
set smartindent                     " Enable smart-indent
set smarttab                        " Enable smart-tabs
set softtabstop=4                   " Number of spaces per Tab

" Other Options
set undolevels=1000                 " Number of undo levels
set backspace=indent,eol,start      " Backspace behaviour
