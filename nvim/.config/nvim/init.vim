" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Unicode search
Plug 'chrisbra/unicode.vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'sjl/badwolf'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'Shougo/neco-syntax'

Plug 'junegunn/fzf.vim'

Plug 'rking/ag.vim'

call plug#end()

" Apre la lista degli errori su make
let g:neomake_open_list = 2

" Impostazioni personali
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


colorscheme badwolf
syntax enable

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

set rnu
" Set undo dir
set undodir=~/.config/nvim/undodir
set undofile

" Clipboard
set clipboard+=unnamed

" Truecolors
set termguicolors

" My keboard
nnoremap <leader>; :buffers<CR>
nnoremap <leader>f :FZF<CR>
nnoremap <leader>s :Ag<CR>
