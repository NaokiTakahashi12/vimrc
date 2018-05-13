nnoremap m :make <Enter> <Enter> <C-w><C-w>
nnoremap + <C-a>
nnoremap - <C-x>
nnoremap ; :
nnoremap : ;
nnoremap <ESC><ESC> :nohlsearch <CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
inoremap <silent> jj <Esc>
inoremap <silent> JJ <Esc>
set nocompatible
set noswapfile
set nobackup
set writebackup
set clipboard+=unnamed,autoselect
set hidden
set nostartofline
set scrolloff=5
set visualbell t_vb=
set noerrorbells
autocmd quickfixcmdpost *grep* cwindow
autocmd quickfixcmdpost *make* copen
highlight ZenkakuSpace cterm=underline ctermfg=1ightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace / /
set encoding=utf-8
set fileencoding=utf-8
set fencs=iso-2022-jp,enc-jp,cp932
syntax on
set title
set number
set ruler
set tabstop=4
set shiftwidth=4
set noexpandtab
set smartindent
set autoindent
set smarttab
set showcmd
set cursorline
set virtualedit=onemore
set showmatch
set laststatus=2
set statusline=%<(%{expand('%:p:h')}/%{expand('%:p:t')})\ %M%M%M%r%w%h\ \ %=\ ENC[%{&fenc!=''?&fenc:&enc}]\ FMT[%{&ff}]\ [%v][%l/%L][%p%%]
set hlsearch
set incsearch
set autoread
highlight StatusLine   term=NONE cterm=NONE ctermfg=black ctermbg=white
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'
set t_Co=256
colorscheme PaperColor
set background=dark
filetype on
autocmd FileType c,cpp,perl,html,py,sh,jar,php,rs set cindent

