let $CACHE = expand('~/.cache')
if !($CACHE->isdirectory())
  call mkdir($CACHE, 'p')
endif
if &runtimepath !~# '/dein.vim'
  let s:dir = 'dein.vim'->fnamemodify(':p')
  if !(s:dir->isdirectory())
    let s:dir = $CACHE .. '/dein/repos/github.com/Shougo/dein.vim'
    if !(s:dir->isdirectory())
      execute '!git clone https://github.com/Shougo/dein.vim' s:dir
    endif
  endif
  execute 'set runtimepath^='
        \ .. s:dir->fnamemodify(':p')->substitute('[/\\]$', '', '')
endif

" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set dein base path (required)
let s:dein_base = '~/.cache/dein/'

" Set dein source path (required)
let s:dein_src = '~/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set dein runtime path (required)
execute 'set runtimepath+=' .. s:dein_src

" Call dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#add('tpope/vim-fugitive')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('flazz/vim-colorschemes')
call dein#add('kchmck/vim-coffee-script')
call dein#add('scrooloose/nerdtree')

" Finish dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

" ------------------------------
" --       Color Scheme       --
" ------------------------------
syntax on
set background=dark
let g:solarized_visibility = "low"
colorscheme solarized
"
"
"" ------------------------------
"" --        Bindings          --
"" ------------------------------
"
imap jk <Esc>
"
"" ------------------------------
"" --         Options          --
"" ------------------------------
set number
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
"set list
"set timeoutlen=100
