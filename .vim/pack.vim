packadd minpac

if !exists('*minpac#init')
  finish
endif

call minpac#init()
call minpac#add('jpalardy/vim-slime')
call minpac#add('jremmen/vim-ripgrep')
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('kovisoft/paredit', {'type': 'opt'})
call minpac#add('lepture/vim-jinja')
call minpac#add('lifepillar/vim-mucomplete')
call minpac#add('lilydjwg/fcitx.vim')
call minpac#add('mattn/emmet-vim')
call minpac#add('metakirby5/codi.vim')
call minpac#add('morhetz/gruvbox', {'type': 'opt'})
call minpac#add('sheerun/vim-polyglot')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-vinegar')
call minpac#add('w0rp/ale')

command! PackUpdate call minpac#update()
command! PackStatus call minpac#status()
command! PackClean call minpac#clean()

" ALE settings
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

" Fugitive settings
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>

" Slime settings
let g:slime_target = "vimterminal"
let g:slime_no_mappings = 1
nmap <Leader>ss <Plug>SlimeParagraphSend
nmap <Leader>sv <Plug>SlimeMotionSend
nmap <Leader>sl <Plug>SlimeLineSend
nmap <Leader>sc <Plug>SlimeConfig
xmap <Leader>sv <Plug>SlimeRegionSend

" Mucomplete settings
let g:mucomplete#chains = {}
let g:mucomplete#chains.default = ['path', 'omni', 'keyp', 'dict', 'uspl', 'c-p']
let g:mucomplete#chains.vim = ['path', 'cmd', 'keyp']

" Paredit settings
let g:paredit_electric_return = 0
