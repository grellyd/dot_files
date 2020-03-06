set nocompatible
syntax on
filetype plugin indent on

if has('gui_running')
    set guioptions-=T
    colo desert
    set guifont=Cousine\ Bold\ 9
endif

set background=dark

"set background=light
"colorscheme solarized
" let g:solarized_termcolors=256
" let g:solarized_contrast="high"

set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set autochdir
set tw=0
set textwidth=0

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

set enc=utf-8
set encoding=utf-8
set fileencoding=utf-8

set diffopt=vertical

inoremap jj <Esc>
nnoremap JJJJ <Nop>
nnoremap <Space> a_<Esc>r
nnoremap <C-Space> i_<Esc>r
nnoremap <Enter> i<Enter><Esc>0
nnoremap <C-Enter> a<Enter><Esc>
nnoremap <F2> :!make <CR>
nnoremap <S-F2> :vnew \| :read !make <CR>
nnoremap <C-F2> :tabnew \| :read !make <CR>
nnoremap <F3> :!go test <CR>
nnoremap <S-F3> :call delete(expand("%")) \| bdelete!
nnoremap <F4> :!go run % <CR>
nnoremap <S-F4> :vnew \| :set buftype=nofile \| :set bufhidden=hide \| :set noswapfile \| :read !go run % <CR>
" nnoremap <C-F4> :tabnew \| :set buftype=nofile \| :set bufhidden=hide \| :set noswapfile \| :read !go run % <CR>
" command Spellstart :setlocal spell spelllang=en_ca

au BufReadPost *.ts set filetype=javascript
au FileType json setlocal foldnestmax=5 foldmethod=marker foldmarker=Header,]

set foldmethod=syntax
set foldnestmax=1

" ============== "
"    Pathogen
" ============== "
execute pathogen#infect()
execute pathogen#helptags()

" ============== "
"    Vim-Notes
" ============== "
"let g:notes_directories = ['~/uni/fourth_year/cpsc_422/notes','~/uni/fourth_year/cpsc_312/notes', '~/uni/fourth_year/cpsc_340/notes', '~/uni/fourth_year/cpsc_415/notes']

" ============== "
"    NERDTree
" ============== "

nnoremap <F5> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

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
let g:UltiSnipsExpandTrigger="<F8>"


" ============== "
"      Ale
" ============== "
let g:ale_lint_on_text_changed = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_open_list = 0
let g:ale_lint_on_save = 1
let g:ale_linters = {'apib': ['drafer']}
let g:airline#extensions#ale#enabled = 1
" let g:ale_linters = { 'go': ['gopls']}
" let g:ale_completion_enabled = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


" ============== "
"     vim-go
" ============== "
let g:go_fmt_autosave=1
nnoremap <Leader>d :GoDef<CR>
nnoremap <Leader>b :GoDefPop<CR>
let g:go_def_mode='godef'
let g:go_fmt_experimental = 1
nnoremap <Leader>s :vsplit \| :GoDef<CR>
" let g:go_def_mode='gopls'
" let g:go_info_mode='gopls'

" ============== "
"     fzf
" ============== "
set rtp+=~/.fzf.bash
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
" Default fzf layout
" - down / up / left / right
" let g:fzf_layout = { 'down': '~40%' }
nnoremap <Leader><Leader> :FZF<CR>
nnoremap <Leader>` :FZF~<CR>


" ============== "
"   fzf-vim
" ============== "

" ============== "
"   vim-latex
" ============== "
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_ViewRule_pdf = 'apvlv'

" ============== "
" vim-latex-live-preview
" ============== "
let g:livepreview_previewer = 'apvlv'
