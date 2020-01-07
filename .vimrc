syntax on
filetype plugin indent on

let mapleader=","

runtime packages.vim
runtime mappings.vim

" Whitespaces
set listchars=tab:»\ ,trail:~
set list
set expandtab
set shiftwidth=4
set softtabstop=4

" Status line
set statusline=
set statusline+=%{FugitiveStatusline()}  " git
set statusline+=\ %f  " relative filename
set statusline+=\ %m  " modified flag
set statusline+=%r  " readonly flag
set statusline+=%=  " separation point between left and right
set statusline+=%y  " file type
set statusline+=[%{&fileformat}]  " file format
set statusline+=[%l,%c]  " row
set statusline+=\ %P  " percentage
set laststatus=2  " always show status line

" Color scheme
if has("gui_running") || $COLORTERM == "truecolor" || $COLORTERM == "24bit"
  set termguicolors
  silent! colorscheme one
endif

set background=light

" Searching
set smartcase
set incsearch  " incremental searching
set hlsearch  " highlight search term

" Format options
set formatoptions+=n  " numbered lists
set formatoptions+=m  " break at a multi-byte character (CJK)
set formatoptions+=B  " don't add a space between two multi-byte characters
set formatoptions+=j  " remove a comment leader when joining lines
set nojoinspaces  " don't insert two spaces after period

" Gvim
if has("gui_running")
  " set guioptions+=c  " use console dialogs
  set guioptions-=m  " remove menu
  set guioptions-=r  " remove right scrollbar
  set guioptions-=L  " remove left scrollbar
  set guioptions-=T  " remove toolbar
  set guicursor=a:block-blinkon0  " disable cursor blink
  set background=light
endif

if has("gui_macvim")
  set macmeta
  set guifont=Menlo:h14
  " For some reason, MacVim doesn't pick up the system's $SHELL.
  set shell=/bin/zsh
endif

if !has("gui_running")
  set ttimeoutlen=100  " fcitx.vim
endif

" Misc
set mouse=a  " use mouse in all modes
set showcmd
set confirm
set wildmenu
set wildmode=longest:full,full
set backspace=indent,eol,start  " make backspace reasonable
set completeopt+=menuone  " required by Mucomplete
set completeopt-=preview
set hidden  " close the window without saving first (be carefule using :qa!)
