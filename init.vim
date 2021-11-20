call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeToggle'}
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'neovim/nvim-lspconfig'

call plug#end()

set rtp+=~/.fzf           " Add fzf path.
set number relativenumber " Enable number line.
set mouse=a               " Mouse support.
set laststatus=2          " Always show status bar.
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P\ %LG

let NERDTreeHijackNetrw=1
let NERDTreeShowHidden=1
let NERDTreeNaturalSort=1
let NERDTreeSortHiddenFirst=1
let NERDTreeIgnore=['\.swp', '\.git$', '.DS_Store', 'Thumbs.db', 'desktop.ini']
let g:seoul256_background = 239

colo seoul256

" Remove trailing white spaces.
nnoremap <silent> <Leader>ws :%s/\s\+$//e<CR>

" Clear search highlights.
nnoremap <silent> <Leader><space> :noh<CR>

" Search word in cursor without moving.
nnoremap * *``
nnoremap # #``

lua << EOF
require'lspconfig'.intelephense.setup{}
EOF
