syntax enable                       " Enable syntax highlighting
set nowrap                      " Display long lines as one lines
set hidden                      " Required to keep multiple buffers open
set encoding=utf-8              " Encoding
set pumheight=10                " Adjust pop-up height
set fileencoding=utf-8          " The encoding written to a file
set mouse=a                    " Enable the mouse
set splitbelow                  " Horizontal splits will automatically split below
set splitright                  " Vertical splits will automatically split to the right
set t_Co=256                    " Set support for 256 colors
set tabstop=4                   " Insert 4 spaces for a tab
set shiftwidth=4                " Amount of spaces for autoindents
set smartindent                 " Smart indenting
set autoindent                  " Automatic indenting
set laststatus=0                " Always display status line
set number                      " Display line numbers
" set nowshowmode               " Hides things like -- INSERT --
set nobackup                    " Recommended by coc
set nowritebackup               " Recommended by coc
set updatetime=300              " Faster completion
set timeoutlen=1000             " Default timeoutlen is 1000 ms
set formatoptions-=cro          " Stop newline continution of comments
set clipboard=unnamedplus       " Copy and paste between nvim and everything else
set ignorecase                  " Casesensitivty 
set hlsearch                    " Highlight search
set incsearch                   " Incremental search
set expandtab                   " Converts tab to whitespace
filetype plugin on              
set cursorline                  " Highlight current line

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    " Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Add file icons
    Plug 'ryanoasis/vim-devicons'
    " Add snippets 
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    " Fancy start screen 
    Plug 'mhinz/vim-startify'
    " Autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Better file explorer
    Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
call plug#end()
