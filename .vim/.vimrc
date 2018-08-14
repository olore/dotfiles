"Suppress persistent highlighting of searched terms"
set nohlsearch

set nocompatible
set backspace=indent,eol,start
set ruler

let mapleader = ","

set tabstop=2 shiftwidth=2 expandtab

"incrementally search file"
set incsearch

"put filename in title bar"
set title

"allow backspacing over everything in INSERT mode
set bs=2

"search for files like bash"
set wildmode=list:longest

" autosave if I switch to another buffer
set autowrite

"move swp files into .vim-tmp/"
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" edit and update vimrc from ANYWHERE
map <leader>rc :e ~/.vim/.vimrc<CR><C-W>
map <leader>rs :so %

" take me to the command line.
map <leader>c :!<CR>

" stop the process
map <leader>z z

" grep recursively, ignoring case
map <leader>g :! grep -ir 

" FuzzyFinder and switchback commands
map <leader>e :e#<CR>
map <leader>b :FuzzyFinderBuffer<CR>
map <leader>f :FuzzyFinderFile<CR>

map <leader>s :%s/

" Split screen vertically and move between screens.
map <leader>v :vsp<CR> 
map <leader>h h
map <leader>< h
map <leader>l l
map <leader>> l
map <leader>= =

" Move between horizontally split screens.
map <leader>j j
map <leader>k k

" set shortcut for TlistToggle
map <leader>tt :TlistToggle<CR>

" set question mark to be part of a VIM word. in Ruby it is!
set isk=@,48-57,_,?,!,192-255
map <leader>n :tnext
map <leader>back t

" tags shortcuts
map fd 
map ps 
map ut :Runittest<CR>
map ft :Rfunctionaltest<CR>
map md :Rmodel<CR>
map cd :Rcontroller<CR>
map uts :vsp<CR>l:Runittest<CR>
map fts :vsp<CR>l:Rfuntionaltest<CR>

" Switch syntax highlighting on, when the terminal has colors
if &t_Co > 2 || has("gui_running")
  syntax on
endif

if &term=="xterm"
     set t_Co=8
     set t_Sb=^[[4%dm
     set t_Sf=^[[3%dm
endif

let Tlist_Ctags_Cmd='/usr/bin/ctags'

so $HOME/.vim/myfiletypes.vim

"set number
syntax enable
set background="dark"
colorscheme solarized
"set gfn=Bitstream\ Vera\ Sans\ Mono\ 18

"set gfn=Monaco:h15:a
  
"pathogen
execute pathogen#infect()

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

