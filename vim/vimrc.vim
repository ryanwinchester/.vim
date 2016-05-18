
"----------------------Vundle---------------------------"
so $vim_dir/vim/plugins.vim


"----------------------Visuals--------------------------"
set background=dark
colorscheme atom-dark-256
"colorscheme hybrid
"colorscheme material-theme
"colorscheme onedark


"---------------------Mappings--------------------------"
nmap <Leader>ev :tabedit $vim_dir/vim/vimrc.vim<cr>
nmap <Leader>ep :tabedit $vim_dir/vim/plugins.vim<cr>


"-------------Auto-Commands--------------"

"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
        autocmd BufWritePost vimrc.vim source %
augroup END
