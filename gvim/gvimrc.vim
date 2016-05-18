
"--------------Vundle--------------------"
so ~/Dropbox/.vim/gvim/plugins.vim


"---------------Visual-------------------"
colorscheme hybrid_material

set macligatures
set guifont=Fira_Code:h15
set linespace=15   		      "Macvim-specific line-height.

set guioptions-=l
set guioptions-=r


"-------------Mappings--------------"
nmap <Leader>ev :tabedit ~/Dropbox/.vim/gvim/gvimrc.vim<cr>
nmap <Leader>ep :tabedit ~/Dropbox/.vim/gvim/plugins.vim<cr>


"-------------Auto-Commands--------------"

"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
        autocmd BufWritePost gvimrc.vim source %
augroup END
