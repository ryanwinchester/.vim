
"--------------Vundle--------------------"
so ~/Dropbox/vim/plugins.vim


"-------------General Settings--------------"
syntax enable
set backspace=indent,eol,start        "Make backspace behave like every other editor.
let mapleader = ',' 	              "The default leader is \, but a comma is much better.
set number		              "Let's activate line numbers.

"--------------Visuals-------------"
colorscheme atom-dark
set guifont=Fira_Code:h15
set linespace=15   		      "Macvim-specific line-height.
:set cursorline

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R


"-------------Search--------------"
set hlsearch
set incsearch


"-------------Split Management--------------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"-------------Mappings--------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit ~/Dropbox/vim/vimrc.vim<cr>
nmap <Leader>ep :tabedit ~/Dropbox/vim/plugins.vim<cr>
nmap <Leader>pi :PluginInstall<cr>
nmap <Leader>pu :PluginUpdate<cr>

"Toggle NERDTree File Tree
nmap <c-B> :NERDTreeToggle<cr>

nmap <c-R> :CtrlPBufTag<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>


"-------------Auto-Commands--------------"

"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
        autocmd BufWritePost vimrc.vim source %
augroup END
