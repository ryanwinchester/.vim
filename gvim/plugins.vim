
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$vim_dir/gvim/bundle/Vundle.vim
call vundle#begin($vim_dir.'/gvim/bundle')


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'othree/html5.vim'
Plugin 'jwalton512/vim-blade'
Plugin 'posva/vim-vue'
Plugin 'elixir-lang/vim-elixir'
"Plugin 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

	" CtrlP -----------------------------------------
	let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
	let g:ctrlp_extension = ['buffertag']

    	" The Silver Searcher - AG to build the index in no time!
        let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
              \ --ignore .git
              \ --ignore .svn
              \ --ignore .hg
              \ --ignore .DS_Store
              \ --ignore "**/*.pyc"
              \ -g ""'

        " faster matcher
        let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

	" Syntastic -------------------------------------
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0

    " Airline ----------------------------------------
    let g:airline_theme = "hybrid"
