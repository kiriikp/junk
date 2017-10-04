set nocompatible

" --- APPEARANCE
	" Colours
	set t_Co=256
	colorscheme desert
	set cursorline
	syntax enable 
	filetype plugin indent on
	hi cursorline cterm=NONE ctermbg=236 ctermfg=NONE

	"  Show matching parentheses
	set showmatch
	"  Line numbers
	set number
	"set relativenumber	
	"  Tab width, uncomment this stuff for 4-wide tabs
	"set tabstop=4 
	"set softtabstop=4
	"set shiftwidth=4
	

" --- USABILITY
	"  Search as characters are entered and highlight matches
	set incsearch
	set hlsearch
	"  Don't redraw the screen during macros
	set lazyredraw
	"  Show last command entered
	set showcmd
	"  Distance from top or bottom where scrolling starts
	set so=12


" --- BINDS-GENERAL
	"  F5 to save the current file
	map <F5> <Esc>:w<CR>
	"  Always move around lines visually
	"nnoremap j gj
	"nnoremap k gk
	"  Double tap j to enter command mode
	inoremap jj <Esc>
	
	" --- Navigating with guides
		"  Hit jk in insert mode to travel to the <++> marker
		inoremap jk <Esc>/<++><CR>:noh<CR><Esc>"_c4l
		"  Hit ;# to make a <++> marker
		inoremap ;# <++>
	
	"  F7 to toggle spellchecking if we have it
	if has("spell")
		map <F7> :setlocal spell! spelllang=en_gb<CR>
	endif
	"  Hit F6 in normal mode to turn off highlighting of last search
	nnoremap <F6> :noh<return><Esc>
	
" --- BINDS-HTML
	autocmd FileType html inoremap ;b <b></b><Space><++><Esc>FbT>i
	autocmd FileType html inoremap ;i <em></em><Space><++><Esc>FeT>i
	autocmd FileType html inoremap ;1 <h1></h1><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ;2 <h2></h2><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ;3 <h3></h3><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ;p <p></p><Enter><Enter><++><Esc>02kf>a
	autocmd FileType html inoremap ;a <a<Space>href=""><++></a><Space><++><Esc>F"i
	autocmd FileType html inoremap ;ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
	autocmd FileType html inoremap ;li <Esc>o<li></li><Esc>F>a
	autocmd FileType html inoremap ;ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i


" --- BINDS-TEX
	"  F5 saves the file and runs pdflatex
  	autocmd Filetype tex map <F5> <esc>:w <bar> !pdflatex %:t<CR>
