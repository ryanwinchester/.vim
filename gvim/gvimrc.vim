
"--------------Vundle--------------------"
so $vim_dir/gvim/plugins.vim


"---------------Visual-------------------"
colorscheme hybrid_material

set macligatures
set guifont=Fira_Code:h15
set linespace=15   		      "Macvim-specific line-height.

set guioptions-=l
set guioptions-=r


"-------------Mappings--------------"
nmap <Leader>ev :tabedit $vim_dir/gvim/gvimrc.vim<cr>
nmap <Leader>ep :tabedit $vim_dir/gvim/plugins.vim<cr>


"-------------Auto-Commands--------------"

"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
        autocmd BufWritePost gvimrc.vim source %
augroup END
