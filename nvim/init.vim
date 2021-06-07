" =================Plugins====================
call plug#begin('~/.nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'

Plug 'phanviet/vim-monokai-pro'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'

Plug 'sheerun/vim-polyglot'
Plug 'chiel92/vim-autoformat'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

call plug#end()


" ============== File Settings ================

""" coc
let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-git',
      \ 'coc-clangd',
      \ 'coc-css',
      \ 'coc-elixir',
      \ 'coc-flutter',
      \ 'coc-go',
      \ 'coc-graphql',
      \ 'coc-html',
      \ 'coc-prettier',
      \ 'coc-rls',
      \ 'coc-rust-analyzer',
      \ 'coc-prisma',
      \ 'coc-python',
      \ 'coc-rome',
      \ 'coc-svelte',
      \ 'coc-sql',
      \ 'coc-tailwindcss',
      \ 'coc-toml',
      \ 'coc-tsserver',
      \ 'coc-vetur',
      \ 'coc-yank',
      \ 'coc-pairs',
      \ 'coc-snippets']


" ================= Appearance ================
""" nerdtree
function! NERDTreeToggleInCurDir()
  " If NERDTree is open in the current buffer
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
    exe ":NERDTreeClose"
  else
    if (expand("%:t") != '')
      exe ":NERDTreeFind"
    else
      exe ":NERDTreeToggle"
    endif
  endif
endfunction

let g:NERDTreeWinPos = "right"
nmap <C-n> :call NERDTreeToggleInCurDir()<CR>


""" Theme
" colorscheme gruvbox
" let g:gruvbox_transparent_bg = 1
" let g:gruvbox_contrast_Dark="hard"
colorscheme nord


""" LightLine
let g:lightline = {
      \ 'colorscheme': "nord",
      \ }


" ==============General settings===================
set relativenumber number
let g:python3_host_prog="/usr/bin/python3"
noremap <C-f> :Autoformat<CR>
au BufWrite * :Autoformat
