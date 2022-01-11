""""My setup"""
" Auto save 
autocmd TextChanged,TextChangedI <buffer> silent write

" Enable copying from vim to clipboard
if has('win32')
	set clipboard=unnamed  
else
	set clipboard=unnamedplus
endif

set mouse=a 				" Enable mouse
set tabstop=4 				" 
set shiftwidth=4 			" 
set listchars=tab:\¦\ 		" Tab charactor 
set list
set foldmethod=indent 		" 
set foldlevelstart=99 		"  
set number 					" Show line number
set ignorecase 				" Enable case-sensitive 

" Search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

""""""""""


call plug#begin('~\Appdata\Local\nvim\plugged')

" NerdTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" File search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 			" Fuzzy finder 
Plug 'junegunn/fzf.vim'
" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Terminal
Plug 'voldikss/vim-floaterm' 					" Float terminal

" Code intellisense
"	Plug 'neoclide/coc.nvim', {'branch': 'release'} " Language server 
	Plug 'jiangmiao/auto-pairs' 					" Parenthesis auto 
	Plug 'alvan/vim-closetag'
"	Plug 'mattn/emmet-vim' 
"	Plug 'preservim/nerdcommenter' 					" Comment code 
"	Plug 'liuchengxu/vista.vim' 					" Function tag bar 
"	Plug 'alvan/vim-closetag' 						" Auto close HTML/XML tag 

" Code syntax highlight
"	Plug 'yuezk/vim-js' 							" Javascript
"	Plug 'MaxMEllon/vim-jsx-pretty' 				" JSX/React
"	Plug 'jackguo380/vim-lsp-cxx-highlight'			" C++ syntax
"	Plug 'uiiaoo/java-syntax.vim' 					" Java
  
" Debugging
"	Plug 'puremourning/vimspector' 					" Vimspector

" Source code version control 
"	Plug 'tpope/vim-fugitive' 						" Git
call plug#end()

" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Orther setting
let settingFile = '~\Appdata\Local\nvim\setting\'
execute 'source '.settingFile.'nerdtree.vim'
"execute 'source '.settingFile.'fzf.vim'
execute 'source '.settingFile.'airline.vim'
"execute 'source '.settingFile.'terminals.vim'
"execute 'source '.settingFile.'coc.vim'
"execute 'source '.settingFile.'nerdcommenter.vim'
"execute 'source '.settingFile.'vimspector.vim'
"execute 'source '.settingFile.'vista.vim'
