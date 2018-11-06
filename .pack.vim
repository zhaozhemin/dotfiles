packadd minpac

if !exists('*minpac#init')
  finish
endif

call minpac#init()
call minpac#add('ervandew/supertab')
call minpac#add('jremmen/vim-ripgrep')
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('lepture/vim-jinja')
call minpac#add('lilydjwg/fcitx.vim')
call minpac#add('mattn/emmet-vim')
call minpac#add('morhetz/gruvbox', {'type': 'opt'})
call minpac#add('nvie/vim-flake8')
call minpac#add('pangloss/vim-javascript')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-vinegar')
call minpac#add('w0rp/ale')
call minpac#add('wlangstroth/vim-racket')

command! PackUpdate call minpac#update()
command! PackStatus call minpac#status()
command! PackClean call minpac#clean()

" ALE settings
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

" Supertab settings
let g:SuperTabDefaultCompletionType="context"
let g:SuperTabContextDefaultCompletionType="<c-p>"
let g:SuperTabRetainCompletionDuration="completion"
let g:SuperTabClosePreviewOnPopupClose=1
" autocmd FileType *
"   \ if &omnifunc != '' |
"   \   call SuperTabChain(&omnifunc, "<c-p>") |
"   \ endif

" Fugitive settings
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>
