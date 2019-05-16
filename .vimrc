syntax on

set relativenumber 
set background=dark

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set splitbelow          " splits below by default
set splitright          " splits on right by default

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

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

set backspace=indent,eol,start  " make that backspace key work the way it should
set runtimepath=$VIMRUNTIME     " turn off user scripts, https://github.com/igrigorik/vimgolf/issues/129

syntax on               " turn syntax highlighting on by default
filetype on             " detect type of file
filetype indent on      " load indent file for specific file type

" Un-\Ident in Normal mode with Shift\Tab
nnoremap <Tab> >>
nnoremap <S-Tab> <<
" Un-\Ident in Insert mode with Shift\Tab
inoremap <Tab> <C-t>
inoremap <S-Tab> <C-d>
" Un-\Ident in Visual mode with Shift\Tab
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
