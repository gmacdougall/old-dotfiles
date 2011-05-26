filetype off
silent! call pathogen#infect()
filetype plugin indent on

set nocp                        "vim no-compativility mode
set ts=2                        "tab stop 2
set shiftwidth=2                "tab shift width 2
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

colo vibrantink
compiler maven2

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
map <silent> <F3> :let @/ = ""<CR>
map <silent> <F5> :make test<CR>
map <silent> <F6> :make clean test<CR>
map <silent> <F9> :dp<CR>
map <silent> <F11> :diffget //2<CR> :diffupdate<CR>
map <silent> <F12> :diffget //3<CR> :diffupdate<CR>

" Plugin Config
" Supertab {
" }

" Syntax highlighting help
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" get/set macro 0"sy$
"^yypkwxelDbywA() { return $this->pA; }^wigetl~j^wxelDbywA($pA) { $this->pA = $pA; }^wisetl~jkk^cwpublic functionj^cwpublic functionj^
