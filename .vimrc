syntax on
filetype plugin indent on

" Load packages
silent! source $HOME/.pack.vim

" Whitespaces
set listchars=tab:»\ ,trail:~
set list
set expandtab
set shiftwidth=4
set softtabstop=4

" Status line
set statusline=
set statusline+=%f  " relative filename
if exists("g:loaded_fugitive")
  set statusline+=\ %{FugitiveStatusline()}  " git
endif
set statusline+=\ %m  " modified flag
set statusline+=%r  " readonly flag
set statusline+=%=  " separation point between left and right
set statusline+=%y  " file type
set statusline+=[%{&fileformat}]  " file format
set statusline+=[%l,%c]  " row
set statusline+=%P  " percentage
set laststatus=2  " always show status line

" Color scheme
set termguicolors
set background=dark
silent! colorscheme gruvbox

" Searching
set smartcase
set incsearch  " incremental searching
set hlsearch  " highlight search term
" Use <C-g> to stop the highlighting
nnoremap <silent> <C-g> :<C-u>nohlsearch<CR><C-l>

" Format options
set formatoptions+=n  " numbered lists
set formatoptions+=m  " break at a multi-byte character (CJK)
set formatoptions+=B  " don't add a space between two multi-byte characters
set formatoptions+=j  " remove a comment leader when joining lines
set nojoinspaces  " don't insert two spaces after period

" Gvim
if has("gui_running")
  set guioptions+=c  " use console dialogs
  set guioptions-=m  " remove menu
  set guioptions-=r  " remove right scrollbar
  set guioptions-=L  " remove left scrollbar
  set guioptions-=T  " remove toolbar
  set guicursor=a:block-blinkon0  " disable cursor blink
  set background=dark
  silent! colorscheme gruvbox
endif

" Window management
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Misc
nnoremap <Space> :
vnoremap <Space> :
map Y y$
set ttimeoutlen=100  " fcitx.vim
set mouse=a  " use mouse in all modes
set showcmd
set confirm
set wildmenu
set wildmode=list:longest
set backspace=indent,eol,start  " make backspace reasonable
set completeopt+=menuone  " required by Mucomplete
set hidden  " close the window without saving first (be carefule using :qa!)
