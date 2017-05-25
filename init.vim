"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Make VIM as modern as possible
set nocompatible

" Set UTF-8 as standard encoding
set encoding=utf8

" Set to auto read when a file is changed from the outside
set history=500

" Enable filetype plugins
filetype plugin on
filetype plugin indent on

" Set to auto read when a file is changed from the outside
set autoread

" Turn on the Wild menu
set wildmenu
set wildmode=list:longest,full

" Configure backspace so it acts as it should act
set backspace=indent,eol,start

"Always show current position
set ruler

" A buffer becomes hidden when it is abandoned
set hidden

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add more margin to the left
set foldcolumn=1

" Enable mouse support in terminal
if has("mouse")
    set mouse=a
endif

" Always show full path of current file
set statusline+=%F


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax on

" Enable True Color as long as the terminal is good
" Gnome Terminal is indeed good
if has("termguicolors")
    set termguicolors
endif

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set guitablabel=%M\ %t
    try
        colorscheme desert
    catch
    endtry
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Don't read modeline
set nomodeline

" Make gf more useful
set path=.,..,/usr/include,**

" Set working directory to the current file
"autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif

" Guess the alternative file
function GuessAlternative()
    let suffix=expand("%:e")

    let newname=""

    if (suffix=="cpp")
        return expand("%:t:r").".h"
    elseif (suffix=="h")
        return expand("%:t:r").".cpp"
    endif
endfunction

com A execute 'find ' GuessAlternative()

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " bind K to grep word under cursor instead of man
  " keywordprg way doesn't support quickfix
  "set keywordprg=ag\ --nogroup\ --nocolor
  nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" Make sure 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => C/C++ related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set cino=(0,N-s,:0,b1,g0
"set cc=100


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gtags related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("cscope")
    set csprg=gtags-cscope
    " Prefer universal-ctags over cscope/global
    set csto=1
    set cst
    set nocsverb
    if filereadable("GTAGS")
        cs add GTAGS
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR>
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR>
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR>
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR>
    nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR>
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-plug related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

let g:ctrlp_max_files = 10000
