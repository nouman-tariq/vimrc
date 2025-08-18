if has("autocmd")
  au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif

set encoding=utf-8
set fileencodings=utf-8

set lazyredraw           " Redraw only when necessary
set synmaxcol=200        " Limit syntax processing to first 200 columns
syntax off               " Turn off syntax highlighting
set nowrap               " Disable line wrapping

" set relativenumber


" Set indent to 2 spaces
set expandtab
set tabstop=2
set shiftwidth=2


" Switch syntax highlighting on when the terminal has colors or when using the
" GUI (which always has colors).

if &t_Co > 2 || has("gui_running")
  " Revert with ":syntax off".
  syntax on
  " I like highlighting strings inside C comments.
  " Revert with ":unlet c_comment_strings".
  let c_comment_strings=1
endif


" new changes Nov23
set number " display line numbers in editor
syntax on " easier readability and color coding
set showmatch " matching brackets
set history=50 " enable commmand line history
set nobackup " disable backup files
set nowritebackup
set backspace=indent,eol,start " backspace work in insert mode
set laststatus=2 " display status line
set scrolloff=5 " keeps at least 5 lines above/below the cursor when scrolling


" june 19
let g:netrw_banner = 0

"june 20
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'

" sept 23
Plug 'preservim/nerdtree'
call plug#end()

