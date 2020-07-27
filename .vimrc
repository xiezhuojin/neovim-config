" Automatic install vim-plug and plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins list
call plug#begin('~/.vim/plugged')
" ui
Plug 'itchyny/lightline.vim'		" statusline
Plug 'morhetz/gruvbox'			" colorscheme
" functionality enhancement
Plug 'tpope/vim-commentary'		" universal comment
Plug 'tpope/vim-surround'		" surroundings editing
Plug 'itchyny/vim-cursorword'		" underlines the word under cursor
" vcs
Plug 'mhinz/vim-signify'		" show added, modified, removed lines
call plug#end()

" UI plugins settings
set laststatus=2			" fall case setting for lightline
set background=dark			" gruvbox dark mode
colorscheme gruvbox			" set gruvbox the default colorscheme

" Netrw(built-in file viewer) setting
let g:netrw_liststyle = 3		" list style
let g:netrw_browse_split = 2		" open file in a new vertical split
let g:netrw_winsize = 25		" size of netrw

" Universal setting
set encoding=utf-8			" default encoding
set ignorecase smartcase		" smartcase search
set wildmenu				" enhance cmd completion
set clipboard=unname			" system clipboard = uname register
set number				" show line number
set showmode				" show mode for cmd, line num, etc
set cursorline				" show cursorline
set showcmd				" show command
set mouse=a				" enable mouse
set colorcolumn=80,120			" maximium columns for coding
