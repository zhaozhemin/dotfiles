map Y y$

nmap gd <Plug>(ale_go_to_definition)
nmap gr <Plug>(ale_find_references)

" ',' is the leader.
noremap \ ,

nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l
nnoremap <Space> :
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
nnoremap <Leader>ev :e ~/.vimrc<CR>

vnoremap <Space> :

tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>
tnoremap <M-h> <C-w>h
tnoremap <M-j> <C-w>j
tnoremap <M-k> <C-w>k
tnoremap <M-l> <C-w>l

" <Up> and <Down> filter the command history.
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
