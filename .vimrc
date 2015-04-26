" Use Vim settings, rather then Vi settings (much better!).
set nocompatible

" Turn on the verboseness to see everything vim is doing.
"set verbose=9

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" I like 4 spaces for indenting
set shiftwidth=4

" I like 4 stops
set tabstop=4

" Spaces instead of tabs
set expandtab

" Always  set auto indenting on
set autoindent

" select when using the mouse
set selectmode=mouse


" do not keep a backup files 
set nobackup
set nowritebackup

if has('gui_running')
    " i like about 80 character width lines
    set textwidth=78
    " Set 52 lines for the display
    set lines=52
    " 2 for the status line.
    set cmdheight=2
    " add columns for the Project plugin
    set columns=110
    " enable use of mouse
    set mouse=a
    " for the TOhtml command
    let html_use_css=1
endif

" keep 50 lines of command line history
set history=50  

" show the cursor position all the time
set ruler       

" show (partial) commands
set showcmd     

" do incremental searches (annoying but handy);
set incsearch 

" Show  tab characters. Visual Whitespace.
set list
set listchars=tab:>.

" Set ignorecase on
set ignorecase

" smart search (override 'ic' when pattern has uppers)
set scs

" Set 'g' substitute flag on
" set gdefault

" Set status line
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*

" Always display a status line at the bottom of the window
set laststatus=2

" Set vim to use 'short messages'.
" set shortmess=a

" Insert two spaces after a period with every joining of lines.
" I like this as it makes reading texts easier (for me, at least).
set joinspaces

" showmatch: Show the matching bracket for the last ')'?
set showmatch

" allow tilde (~) to act as an operator -- ~w, etc.
set notildeop

set nu

set cul

"set cuc

" The bundle setting: http://www.cnblogs.com/xia520pi/archive/2014/04/11/3659386.html

set nocompatible " be iMproved

filetype off " required! 

set rtp+=~/.vim/bundle/vundle/ 

call vundle#rc() 

" let Vundle manage Vundle
"
" " required!
"
Bundle 'gmarik/vundle'

" Type 1 bundle plugins: vim-scripts repos

Bundle 'L9'

Bundle 'FuzzyFinder'

" Type 2 bundle plugin: non vim-scripts, original repos on github

Bundle 'tpope/vim-fugitive' 

Bundle 'Lokaltog/vim-easymotion' 

Bundle 'rstacruz/sparkup', {'rtp': 'vim/'} 

Bundle 'tpope/vim-rails.git'

" Type 3 bundle plugin: non github repos
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on " required!

" Brief help
"
" " :BundleList - list configured bundles
"
" " :BundleInstall(!) - install(update) bundles
"
" " :BundleSearch(!) foo - search(or refresh cache first) for foo
"
" " :BundleClean(!) - confirm(or auto-approve) removal of unused bundles
"
" "
"
" " see :h vundle for more details or wiki for FAQ
"
" " NOTE: comments after Bundle command are not allowed..
"
