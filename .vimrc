syntax on
filetype plugin indent on

set listchars=tab:»\ ,trail:~
set list

set expandtab
set shiftwidth=4
set softtabstop=4

set wildmenu
set wildmode=list:longest

set statusline=
set statusline+=%f  " relative filename
set statusline+=\ %m  " modified flag
set statusline+=%r  " readonly flag
set statusline+=%=  " separation point between left and right
set statusline+=%y  " file type
set statusline+=[%{&fileformat}]  " file format
" set statusline+=[%{&fileencoding?&fileencoding:&encoding}]  " file encoding
set statusline+=[%l/%L:%c]  " row and column
set statusline+=\ %P  " percentage
set laststatus=2  " always show status line

set termguicolors
set background=dark
colorscheme gruvbox

set showcmd
set confirm

set hlsearch  " highlight search term
" Use <C-l> to stop the highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

set ttimeoutlen=100
set mouse=a

" Avoid key chords
nnoremap <Space> :
vnoremap <Space> :

" Format options
set formatoptions+=n  " numbered lists
set formatoptions+=m  " break at a multi-byte character
set formatoptions+=B  " don't add a space between two multi-byte characters
set formatoptions+=j  " remove a comment leader when joining lines

if has("gui_running")
  set guioptions+=c  " use console dialogs
  set guioptions-=m  " remove menu
  set guioptions-=r  " remove right scrollbar
  set guioptions-=L  " remove left scrollbar
  set guioptions-=T  " remove toolbar
  set guicursor=a:block-blinkon0  " disable cursor blink
  set background=light
  colorscheme gruvbox
endif

" Supertab settings
let g:SuperTabDefaultCompletionType="context"
let g:SuperTabContextDefaultCompletionType="<c-p>"
let g:SuperTabRetainCompletionDuration="completion"
let g:SuperTabClosePreviewOnPopupClose=1
" autocmd FileType *
"   \ if &omnifunc != '' |
"   \   call SuperTabChain(&omnifunc, "<c-p>") |
"   \ endif
