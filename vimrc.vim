
"--------------Vundle--------------------"
so ~/Dropbox/vim/plugins.vim


"-------------General Settings--------------"
syntax enable
set backspace=indent,eol,start      "Make backspace behave like every other editor.
let mapleader = ',' 	            "The default leader is \, but a comma is much better.
set number		                    "Let's activate line numbers.


"--------------Formatting----------"
set nowrap                          " wrap long lines
set autoindent                      " indent at the same level of the previous line
set expandtab                       " tabs are spaces, not tabs
set shiftwidth=4                    " use indents of 4 spaces
set tabstop=4                       " an indentation every four columns
set softtabstop=4                   " let backspace delete indent


"--------------Visuals-------------"
set background=dark
colorscheme atom-dark-256
set guifont=Fira_Code:h15
set cursorline                      " highlight current line

set guioptions-=l
set guioptions-=r


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

" Put at the very end of your .vimrc file.

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

"-------------Functions--------------"

" PHP Syntax
augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

" PHP Namespaces:
" expand class
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>f <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>f :call PhpExpandClass()<CR>
" import class
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
" sort imports
autocmd FileType php inoremap <Leader>s <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>s :call PhpSortUse()<CR>
