set background=dark
colorscheme hybrid_material

" Enable syntax highlighting
syntax on

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Highlight current line
set cursorline

" Set default encoding to UTF-8
set encoding=utf-8
set fileencodings=utf-8

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Always display the status line, even if only one window is displayed
set laststatus=2

" Display special chars
set list
set listchars=tab:>-,extends:<,trail:-

" Don't change title
set notitle

" Display line numbers on the left
set number

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Show partial commands in the last line of the screen
set showcmd

" Better commandline completion
set wildmenu

" Don't create .viminfo
set viminfo=

" Indentation settings for using 4 spaces instead of tabs.
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" Powerline
if system('uname') =~ 'MINGW'
else
    set rtp+=$POWERLINE_HOME/bindings/vim
    let g:Powerline_symbols = 'fancy'
    set noshowmode
endif

" key bindings
nmap <ESC>a <M-a>
nmap <ESC>b <M-b>
nmap <ESC>c <M-c>
nmap <ESC>d <M-d>
nmap <ESC>e <M-e>
nmap <ESC>f <M-f>
nmap <ESC>g <M-g>
nmap <ESC>h <M-h>
nmap <ESC>i <M-i>
nmap <ESC>j <M-j>
nmap <ESC>k <M-k>
nmap <ESC>l <M-l>
nmap <ESC>m <M-m>
nmap <ESC>n <M-n>
nmap <ESC>o <M-o>
nmap <ESC>p <M-p>
nmap <ESC>q <M-q>
nmap <ESC>r <M-r>
nmap <ESC>s <M-s>
nmap <ESC>t <M-t>
nmap <ESC>u <M-u>
nmap <ESC>v <M-v>
nmap <ESC>w <M-w>
nmap <ESC>x <M-x>
nmap <ESC>y <M-y>
nmap <ESC>z <M-z>
nmap <ESC><Up> <M-Up>
nmap <ESC><Down> <M-Down>
nmap <ESC><Right> <M-Right>
nmap <ESC><Left> <M-Left>
nmap <ESC>> <M->>
nmap <ESC>< <M-<>
nmap <ESC>+ <M-+>
nmap <ESC>- <M-->

nnoremap <M-h> :<C-u>split<CR>
nnoremap <M-v> :<C-u>vsplit<CR>

nnoremap <M-Up> <C-w>k
nnoremap <M-Down> <C-w>j
nnoremap <M-Right> <C-w>l
nnoremap <M-Left> <C-w>h

nnoremap <M-S-Up> <C-w>K
nnoremap <M-S-Down> <C-w>J
nnoremap <M-S-Right> <C-w>L
nnoremap <M-S-Left> <C-w>H

nnoremap <M->> <C-w>>
nnoremap <M-<> <C-w><
nnoremap <M-+> <C-w>+
nnoremap <M--> <C-w>-

nnoremap <C-t> :<C-u>tabnew<CR>
nnoremap <S-Tab> gt

nnoremap <ESC><ESC> :nohlsearch<CR><ESC>
