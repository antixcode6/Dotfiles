call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'preservim/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'itchyny/lightline.vim'
Plug 'davidhalter/jedi-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'doums/darcula'
call plug#end()

set number

syntax on

"autocmd vimenter * colorscheme gruvbox
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
let g:lightline = { 'colorscheme': 'darcula' }

autocmd vimenter * NERDTree

colorscheme dracula

" Runs Python3 script in current buffer when you hit F9
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
