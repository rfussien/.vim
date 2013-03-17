""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @frenus' vimrc file
"
" Sections:
"   => General
"   => Bundle managment : plugins
"   => Bundle managment : colorscheme
"   => VIM user interface
"   => Colors and Fonts
"   => Text, tab and indent related
"   => Moving around, tabs, windows and buffers
"   => Status line
"   => .my.vimrc functions
"   => Helper functions
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable/Disable filetype plugins
filetype off

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" auto-change directory to current buffer
autocmd BufEnter * :cd %:p:h	

" highlight any text after column 80 (e.g. respect zend standards codeing)
au BufWinEnter * let w:m1=matchadd('Search', '\%<120v.\%>80v', -1)
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Bundle managment : plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Bundlemanager
Bundle 'gmarik/vundle'

"fileexplorer
Bundle 'scrooloose/nerdtree'

"smartfileopener
Bundle 'kien/ctrlp.vim'

"nicestatusbar
Bundle 'Lokaltog/vim-powerline'

"patchphpcomplete.vom
Bundle 'shawncplus/phpcomplete.vim'

" HTML & CSS super fast
Bundle 'mattn/zencoding-vim'

" Hightlight the markdown files
Bundle 'Markdown-syntax'

" PHP Code Sniffer
Bundle 'phpcs.vim'

" Snipets
Bundle 'UltiSnips'
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Autoclose "'({[
Bundle 'AutoClose'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Bundle managment : colorscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'desert.vim'
Bundle 'Mustang2'
Bundle 'peaksea'
Bundle 'Solarized'
Bundle 'tir_black'
Bundle 'candycode.vim'

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"show line number
set nu

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
"set hlsearch

" Makes incremental search 
set incsearch

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Disable scrollbars to save place
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax on

set background=dark
if has("gui_running")
	"default colorscheme
	colorscheme peaksea
	
	"Highlight background of current line
	set cursorline

	
	"Invisible character colors
	highlight NonText guifg=#4a4a59
	highlight SpecialKey guifg=#4a4a59
else
	set t_Co=256
	try
		"That theme actually works in 256
    	colorscheme Mustang
	catch /^Vim\%((\a\+)\)\=:E185/
	    colorscheme default
	endtry
endif

" Show tabs and newline characters with F12
map <F12> :set list!<CR>
set listchars=tab:▸\ ,trail:·,extends:»,precedes:«,nbsp:×,eol:¶


" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,mac,dos

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" I'm using the PEAR's standards
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Return to last edit position when opening files
autocmd BufReadPost *
	 \ if line("'\"") > 0 && line("'\"") <= line("$") |
	 \   exe "normal! g`\"" |
	 \ endif
" Remember info about open buffers on close
set viminfo^=%

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => .my.vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    source ~/.my.vimrc
catch
endtry

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	en
	return ''
endfunction
