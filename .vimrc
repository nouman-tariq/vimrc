" ~/.vimrc

" Restore cursor to last edit position when reopening a file
if has("autocmd")
  au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif

" Encoding
set encoding=utf-8
set fileencodings=utf-8

" Display / performance
set number               " line numbers
set nowrap               " no line wrapping
set lazyredraw           " redraw only when necessary
set synmaxcol=200        " limit syntax processing to first 200 columns
set showmatch            " highlight matching brackets
set laststatus=2         " always show the status line
set scrolloff=5          " keep 5 lines of context around the cursor

" Indentation — 2 spaces
set expandtab
set tabstop=2
set shiftwidth=2

" Editing behaviour
set history=50                   " command-line history
set backspace=indent,eol,start   " sane backspace in insert mode
set nobackup                     " no backup files
set nowritebackup

" netrw
let g:netrw_banner = 0

" Syntax highlighting (when the terminal has colors or in the GUI)
if &t_Co > 2 || has("gui_running")
  syntax on
  let c_comment_strings=1        " highlight strings inside C comments
endif

" Plugins (vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'        " Git integration
Plug 'preservim/nerdtree'        " file-tree sidebar
call plug#end()
