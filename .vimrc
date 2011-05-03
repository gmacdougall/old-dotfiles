set nocp                        "vim no-compativility mode
set ts=2                        "tab stop 2
set shiftwidth=2                "tab shift width 2
set autoindent                  "use auto indenting
set smartindent                 "use smart indenting
set bs=2                        "allow backspace in insert mode
syntax enable                   "enable syntax highlighting
set ruler                       "use the ruler thigy
set showmatch                   "blink matching parentheses
set nobackup                    "don't do the ~ backups
set ignorecase                  "do case insensitive searching
set directory=.                 "set directory for locatinf swap files    
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

match errorMsg /[^\t] \zs\t\+/

colo vibrantink
compiler maven2

"variable tab completion
function InsertTabWrapper() 
	let col = col('.') - 1 
	if !col || getline('.')[col - 1] !~ '\k' 
		return "\<tab>" 
	else 
		return "\<c-p>" 
	endif 
endfunction 
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

"This maps ctrl+j and ctrl+k to moving between :split windows
map <silent> <C-J> <C-W>j<C-W>_ 
map <silent> <C-K> <C-W>k<C-W>_ 
map <silent> <F3> :let @/ = ""<CR>
map <silent> <F5> :make test<CR>
map <silent> <F6> :make clean test<CR>

" get/set macro 0"sy$
"^yypkwxelDbywA() { return $this->pA; }^wigetl~j^wxelDbywA($pA) { $this->pA = $pA; }^wisetl~jkk^cwpublic functionj^cwpublic functionj^
