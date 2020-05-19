set shell=/usr/bin/zsh

" Set leader keys
let g:maleader="\<Space>"
let g:localleader=","

" ------------------
" Plugins
" ------------------

call plug#begin("~/.config/nvim/plugged")

Plug 'arcticicestudio/nord-vim'
Plug 'justinmk/vim-sneak'
Plug 'airblade/vim-rooter'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf'
Plug 'sheerun/vim-polyglot'

call plug#end()

filetype plugin indent on
syntax on

" Set colortheme
set background=dark
colorscheme nord

" Set custom statusline
set laststatus=2
set statusline=%=%m\ %c\ %P\ %f

" Some general settings
set encoding=utf-8
set ttyfast
set ttimeout
set ttimeoutlen=50
set backspace=indent,eol,start
set showcmd
set wildmenu
set hidden
set nowrap
set number
set relativenumber
set cursorline
set splitbelow
set splitright
set autoindent
set incsearch
set hlsearch
set ignorecase
set smartcase
set cmdheight=2
set updatetime=300
set signcolumn=yes

" Set tab size
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab

" Permanent undo history
set undodir=~/.cache/vimdid
set undofile

" ------------------
" Plugin settings
" ------------------

augroup fmt
    autocmd BufWritePre * Neoformat
augroup END

" ------------------
" Shortcuts
" ------------------

" Fuzzy finding
map <C-p> :Files<CR>
nmap <leader>; :Buffers<CR>
nmap <leader>ss :Rg

" C-h stops the search
nnoremap <C-h> :nohlsearch<CR>

" Suspend vim
nnoremap <C-f> :sus<CR>

" Clipboard integration
noremap <leader>p :read !xsel --clipboard --output<CR>
noremap <leader>c :w !xsel -ib<CR>

" Format buffer
nmap <leader>f :Neoformat<CR>
