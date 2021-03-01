"This init vim is a lighter nvim config file for my Void linux install. More focused and less bloat for a laptop dev environment

call plug#begin()
" Initialize plugin system
Plug 'fatih/vim-go'
Plug 'powerline/powerline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
Plug 'ayu-theme/ayu-vim'
call plug#end()

set number

syntax on


" Runs Python3 script in current buffer when you hit F9
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" Runs :GoFmt
map <C-j> :GoFmt<CR>


" NERDtree toggles
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>
nmap <F6> :NERDTreeToggle<CR>

let g:python3_host_prog = '/usr/bin/python3'
" let g:python_host_prog = '/usr/bin/python'
let g:loaded_python_provider=1
let g:python_host_skip_check=1

"Goyo mappings
map <C-z> :Goyo 120x70<CR>
map <F5> :Goyo!<CR>

"PowerLine
set encoding=utf-8
set laststatus=2
let g:Powerline_symbols='unicode'

" tab airline
let g:airline#extensions#tabline#enabled = 1

" Powerline
let g:airline_powerline_fonts = 1
let g:ackprg = 'ack -s -H --nopager --nocolor --nogroup --column --smart-case'

augroup opkgs
  autocmd!
  autocmd FileType go command! -buffer Import exe 'GoImport' fzf#run({'source': 'gopkgs'})[0]
  autocmd FileType go command! -buffer Doc exe 'GoDoc' fzf#run({'source': 'gopkgs'})[0]
augroup END

let g:airline_theme='ayu_mirage'

" tabs for golang
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

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
let g:airline_symbols.linenr = '⚘'
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
