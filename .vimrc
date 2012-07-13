set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'bronson/vim-trailing-whitespace'
Bundle 'ervandew/supertab'

Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-pathogen'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'

Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'intuited/lh-vim-lib'
Bundle 'ervandew/relative'
Bundle 'timcharper/textile.vim'
Bundle 'int3/vim-extradite'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tobiassvn/vim-gemfile'
Bundle 'claco/jasmine.vim'
Bundle 'othree/html5.vim'
Bundle 'hail2u/vim-css3-syntax'

set nocp                        "vim no-compativility mode
set expandtab
set ts=2                        "tab stop 4
set shiftwidth=2                "tab shift width 4
set autoindent                  "use auto indenting
set smartindent                 "use smart indenting
set bs=2                        "allow backspace in insert mode
syntax enable                   "enable syntax highlighting
set ruler                       "use the ruler thigy
set showmatch                   "blink matching parentheses
set ignorecase                  "do case insensitive searching
set directory=.                 "set directory for locating swap files
set hls                         "use highlight search
set wmh=0                       "minimum windows height for splits
set laststatus=2                "status window should always be shown
set statusline=
set statusline +=\ %<%t%*       "full path
set statusline +=\ %m%*         "modified flag
set statusline +=%=             "align remaining ot the right
set statusline +=\ %{fugitive#statusline()}
set statusline +=[%5l%*         "current line
set statusline +=/%L%*]         "total lines
set statusline +=%4c\ %*        "column number
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/
set nofoldenable
filetype plugin indent on

colo vibrantink
compiler maven2
au BufRead,BufNewFile *.twig set syntax=htmljinja
autocmd BufNewFile,BufRead *.json set ft=javascript

"This maps ctrl+j and ctrl+k to moving between :split windows
map <silent> <C-J> <C-W>j<C-W>_
map <silent> <C-K> <C-W>k<C-W>_
map <silent> <C-H> <C-W>h
map <silent> <C-L> <C-W>l
map <silent> gb :Gblame<CR>
map <silent> gc :Gcommit<CR>
map <silent> gC :Gcommit -a<CR>
map <silent> gl :gitv<CR>
map <silent> gs :Gstatus<CR>
map <silent> <F2> :NERDTreeToggle<CR>
map <silent> <F3> :let @/ = ""<CR>
map <silent> <F9> :dp<CR>
map <silent> <F11> :diffget //2<CR> :diffupdate<CR>
map <silent> <F12> :diffget //3<CR> :diffupdate<CR>

" Plugin Config
let g:local_vimrc=".vimrc.local"
let NERDTreeDirArrows=0

" Syntax highlighting help
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" get/set macro 0"sy$
"^yypkwxelDbywA() { return $this->pA; }^wigetl~j^wxelDbywA($pA) { $this->pA = $pA; }^wisetl~jkk^cwpublic functionj^cwpublic functionj^
"
