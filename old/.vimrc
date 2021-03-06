set nocompatible
syntax on
filetype plugin indent on

if has('gui_running')
    set guioptions-=T
    colo desert
    set guifont=Cousine\ Bold\ 9
endif

set enc=utf-8
set fileencoding=utf-8
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set autochdir
set tw=0

set backupdir=/usr/tmp
set directory=/usr/tmp
set undodir=/usr/tmp

set noacd

set showcmd
set autoindent

set wildmenu
set wildmode=list:longest,full

set number

set ignorecase
set smartcase

set encoding=utf-8

set diffopt=vertical

inoremap jj <Esc>
"inoremap { {<CR>}<Esc>O
nnoremap JJJJ <Nop>
nnoremap <Space> a_<Esc>r
nnoremap <C-Space> i_<Esc>r
nnoremap <Enter> i<Enter><Esc>0
nnoremap <C-Enter> a<Enter><Esc>
"nnoremap <Tab> i<Tab><Esc>
nnoremap <F2> :!make <CR>
nnoremap <S-F2> :vnew \| :read !make <CR>
nnoremap <C-F2> :tabnew \| :read !make <CR>
"nnoremap <S-F3> :!java -agentlib:jdwp=transport=dt_shmem,server=y,suspend=n "CSdict"
nnoremap <F3> :!gcc -S % <CR>
nnoremap <S-F3> :call delete(expand("%")) \| bdelete!
" nnoremap <F4> :!python % <CR>
" nnoremap <S-F4> :vnew \| :read !python # <CR>
" nnoremap <C-F4> :tabnew \| :read !python # <CR>

nnoremap <F4> :!python -m tests.service.run_tests <CR>

nnoremap <S-F4> :vnew \| :set buftype=nofile \| :set bufhidden=hide \| :set noswapfile \| :read !python -m tests.service.run_tests <CR>

nnoremap <C-F4> :tabnew \| :set buftype=nofile \| :set bufhidden=hide \| :set noswapfile \| :read !python -m tests.service.run_tests <CR>

" ============== "
"    Pathogen
" ============== "
execute pathogen#infect()
execute pathogen#helptags()

" ============== "
"    NERDTree
" ============== "

nnoremap <F5> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"let g:NERDTreeDirArrowExpandable = '-->'
"let g:NERDTreeDirArrowCollapsible = '^_^'

" ============== "
"     Tagbar
" ============== "
nnoremap <F6> :TagbarToggle<CR>


" ============== "
"     Taboo
" ============== "
let g:taboo_tab_format = "[%N] %f"


" ============== "
"   UltiSnips
" ============== "
"let g:UltiSnipsExpandTrigger = <F8>

" ============== "
"      ale
" ============== "
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1


" ============== "
"      fzf
" ============== "
set rtp+=/usr/local/opt/fzf
