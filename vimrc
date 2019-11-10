syntax on
filetype on
colorscheme PaperColor

highlight ZenkakuSpace cterm=underline ctermfg=1ightblue guibg=#666666
highlight StatusLine   term=NONE cterm=NONE ctermfg=black ctermbg=white

autocmd quickfixcmdpost *grep* cwindow
autocmd quickfixcmdpost *make* copen
autocmd BufNewFile,BufRead * match ZenkakuSpace / /
autocmd FileType c,cpp,cc,cxx,h,hpp,hxx,hh,perl,html,py,sh,jar,php,rs set cindent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType urdf setlocal ts=2 sts=2 sw=2 expandtab

let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'
let mapleader = "\<Space>"

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>m :make<CR><CR><C-w><C-w>
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

inoremap <silent> jj <Esc>
inoremap <silent> JJ <Esc>

nnoremap + <C-a>
nnoremap - <C-x>
nnoremap <ESC><ESC> :nohlsearch <CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>

nnoremap ; :
nnoremap : ;

set number
set ruler
set title
set writebackup
set hidden
set smartindent
set smarttab
set showcmd
set cursorline
set showmatch
set hlsearch
set incsearch
set autoread
set autoindent

set nocompatible
set noswapfile
set nobackup
set nostartofline
set noerrorbells
set noexpandtab

set fencs=iso-2022-jp,enc-jp,cp932
set encoding=utf-8
set fileencoding=utf-8
set tabstop=4
set shiftwidth=4

set clipboard+=unnamed,autoselect
set scrolloff=5
set visualbell t_vb=
set virtualedit=onemore
set t_Co=256
set laststatus=2
set background=dark
set statusline=%<(%{expand('%:p:h')}/%{expand('%:p:t')})\ %M%M%M%r%w%h\ \ %=\ ENC[%{&fenc!=''?&fenc:&enc}]\ FMT[%{&ff}]\ [%v][%l/%L][%p%%]
