" Options
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

" Tabs size
set expandtab
set shiftwidth=4
set tabstop=4

" Syntax
filetype plugin indent on
syntax on

" Color
set t_Co=256
set termguicolors

" Plugins
call plug#begin('~/.vim/plugged')

" gruvbox colorscheme
Plug 'morhetz/gruvbox'
" Appearance
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'

" Utilities
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'

" Completion / linters / formatters
Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
Plug 'plasticboy/vim-markdown'

call plug#end()

" Color scheme
colorscheme gruvbox

" File browser
let NERDTreeShowHidden=1
map <C-o> :NERDTreeToggle<CR>
augroup nerdtree_open
    autocmd!
    autocmd VimEnter * NERDTree | wincmd p
augroup END

