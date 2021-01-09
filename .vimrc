"""""""""""""""""""""""""""""""""""""""""""""
"                                           "
"   ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗ "
"   ██║   ██║██║████╗ ████║██╔══██╗██╔════╝ "
"   ██║   ██║██║██╔████╔██║██████╔╝██║      "
"   ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║      "
" ██╗╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗ "
" ╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ "
"                                           "
"""""""""""""""""""""""""""""""""""""""""""""

"set runtimepath+=~/.vim/colors

set background=dark     " Set background before Syntax and colorscheme
syntax on               " turn syntax highlighting on by default
set termguicolors       " Enables better colors in WSL
colorscheme aurora      " set color scheme to aurora

set relativenumber      " Sets relative line numbers 
set cursorline          " Highlights the current cursor line
set noerrorbells
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set splitbelow          " splits below by default
set splitright          " splits on right by default
set noswapfile          " No swap files when editing in vim
set smartcase           "Case insensitive search until you put a capital letter
set wildmode=longest,list,full " Enable Autocompletion 

set backspace=indent,eol,start " make that backspace key work the way it should

set showcmd             " display incomplete commands
set nobackup            " do not keep a backup file
set number              " show line numbers
set ruler               " show the current row and column

set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present

set splitbelow splitright " Splits open at bottm and right

"set visualbell t_vb=    " turn off error beep/flash
"set visualbell
"set novisualbell        " turn off visual bell

set history=200         " Increase command history

set backspace=indent,eol,start  " make that backspace key work the way it should
"set runtimepath=$VIMRUNTIME     " turn off user scripts, https://github.com/igrigorik/vimgolf/issues/129

filetype on             " detect type of file
filetype indent on      " load indent file for specific file type

"-----------------------------------
" Remap 
"-----------------------------------

" Un-\Ident in Normal mode with Shift\Tab
nnoremap <Tab> >>
nnoremap <S-Tab> <<

" Un-\Ident in Insert mode with Shift\Tab
"inoremap <Tab> <C-t>
inoremap <S-Tab> <C-d>

" Un-\Ident in Visual mode with Shift\Tab
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Leader Key Remapping
set timeoutlen=1000
nnoremap <Space> <Nop>
"map <Space> <leader>
let mapleader = "\<Space>"
"let localleader = "\<Space>"

" Clear highlight on pressing ESC
nnoremap <Leader><esc> :noh<cr>

"Move line with Alt
"nnoremap <leader>j :m .+1<CR>==
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"Move windows with ease
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

"Resize Vertical Splits
nnoremap <Leader>, <C-w><
nnoremap <Leader>. <C-w>>

"Resize Horizontal Splits
"nnoremap - <C-W>-
"nnoremap = <C-W>+

"Resize Vertical Splits
"nnoremap _ <C-W><
"nnoremap + <C-W>>

"---------Plugins---------"
execute pathogen#infect()

"Airline Theme
let g:airline_theme='base16_spacemacs'
