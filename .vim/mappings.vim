map Y y$

nmap gd <Plug>(ale_go_to_definition)
nmap gr <Plug>(ale_find_references)

" ',' is the leader.
noremap \ ,

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Space> :
nnoremap <silent> <C-g> :<C-u>nohlsearch<CR><C-l>
nnoremap <Leader>ev :e ~/.vimrc<CR>

vnoremap <Space> :

tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>

" <Up> and <Down> filter the command history.
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
