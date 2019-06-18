" General
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++ 	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)

set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set cindent	" Use 'C' style program indenting
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab

set showcmd
" More natural splitting of windows
set splitbelow
set splitright
" Advanced
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
 

" Plugins

call plug#begin()

Plug 'roxma/nvim-completion-manager'

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

Plug 'anned20/vimsence'

Plug 'Vimjas/vim-python-pep8-indent'

Plug 'vim-airline/vim-airline'

Plug 'dylanaraps/wal.vim'

Plug 'Nequo/vim-allomancer'

Plug 'hdima/python-syntax'

Plug 'scrooloose/nerdtree'

Plug 'morhetz/gruvbox'

Plug 'tpope/vim-surround'

Plug 'powerline/powerline'

Plug 'joereynolds/SQHell.vim'

Plug 'vim-airline/vim-airline-themes'

Plug 'ryanoasis/vim-devicons'

Plug 'vim-syntastic/syntastic'

Plug 'nvie/vim-flake8'

Plug 'tpope/vim-fugitive'

call plug#end()


" Devicons & Syntax

let g:pymode_indent = 0

let python_highlight_all = 1 

syntax on

set encoding=UTF-8

set guifont=DroidSansMono\ Nerd\ Font\ 15


" colors

colorscheme gruvbox " colorscheme
set background=dark " gruvbox darkk

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" Keybind

nmap <silent> <C-@> :term<CR>
inoremap <C-S> <esc>:update<cr>gi                " save files
nnoremap <C-S> :update<cr>
nmap <silent> <C-n> :bn<CR>
nmap <silent> <C-b> :bp<CR>
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
nmap <silent> <C-o> :NERDTreeToggle<CR>

" Buffer Tab

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline_powerline_fonts = 1

let g:airline_theme='gruvbox'
