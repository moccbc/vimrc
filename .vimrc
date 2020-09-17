" ---------- Color Schemes ---------- "
" colorscheme one
" set background=dark
colorscheme elflord 

" ---------- Remapping Keys ---------- "
" Make arrow keys do nothing 
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Moving displayed line by line
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

" Fast exit 
inoremap jk <esc>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Get rid of shift and ;
nnoremap ; :

" ---------- Visual Settings ---------- "

" Tabs and space settings
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent

" Automatically wraps text that extends beyond the screen
set breakindent
set formatoptions=l
set lbr
set wrap
set linebreak

" Turns on syntax highlighting
syntax on

" Highlights matching pairs of brackets. Use the '%' char to jump between them
set matchpairs+=<:>

" Show line numbers
set number

" Display different types of white spaces.
set list
set listchars=tab:>\ ,trail:•,extends:#,nbsp:.

" Speed up scrolling in Vim
set ttyfast

" Fixes common backspace problems
set backspace=indent,eol,start

" Status Bar
set laststatus=2

" Syntastic settings
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Auto complete brackets
inoremap {        {}<Left>
inoremap {<CR>    {<CR>}<Esc>O
inoremap {{       {
inoremap {}       {}

" Map the space key to toggle a selected fold open / close
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"
