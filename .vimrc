set nocompatible
if has("autocmd")
    filetype indent plugin on
endif

filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" PLUGINS
Plugin 'VundleVim/Vundle.vim'

" CamelCaseMoving
Plugin 'bkad/CamelCaseMotion'

" Markdown support
Plugin 'Markdown'

" Commenting
Plugin 'tomtom/tcomment_vim'

" Search plugins
Plugin 'ctrlp.vim'
Plugin 'scrooloose/nerdtree'

" Coloring
Plugin 'flazz/vim-colorschemes'

" cTags
Bundle 'craigemery/vim-autotag'

" Tab completion
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'

" Ruby stuff 
Plugin 'thoughtbot/vim-rspec'
Plugin 'vim-ruby/vim-ruby'
Plugin 'rails.vim'
Plugin 'kana/vim-textobj-user.git'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'vroom'
Plugin 'tpope/vim-endwise'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ngmy/vim-rubocop'

Plugin 'auto-pairs'

Plugin 'tmhedberg/matchit'

" Multiple cursors
Plugin 'vim-multiple-cursors'

" Surround
Plugin 'tpope/vim-surround'

" Now we can turn our filetype functionality back on
filetype plugin indent on

set cursorline
set cursorcolumn

" Menu style on file/directory tab completion
set wildmode=longest,list,full
set wildmenu

" Tabswidth
set shiftwidth=2
set tabstop=2
set expandtab

" Highlight search results
set ignorecase hlsearch
set incsearch
nmap <leader>h :nohlsearch<cr>

""" Enable lazy line move
" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Colorscheme
syntax enable
set background=dark
colorscheme quantum 

" cTags
set tags=./tags

" Default line numbering
set nu

" Duplicate block / line
let mapleader = ","
nmap <leader>d yyp
vmap <leader>d y'>p
imap <C-d> <ESC>yypi

" NERDTree
let NERDTreeShowHidden=1
nmap <leader>ne :NERDTreeToggle<cr>

" ctrlP stuff
map <LEADER>p :CtrlPClearCache<CR>
set wildignore+=*//*,*/.hg/*,*/.svn/*

" Find mapping
map <C-f> /

" Commenting easier
vmap <C-m> gc
map <C-m> gcc

" Cut, Paste, Copy
vmap <C-x> d
vmap <C-v> p
vmap <C-c> y

"Gutter toggle
noremap  <Leader>g GutterToggle<CR>

" RuboCop stuff
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>

" Tabbing and windows
map <LEADER>t :tabe<CR>
map <LEADER>sv :sv<CR>

" RSpec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Tab completion
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" move through method definitions
map m ]m
map M [m

" Remap split close
map <leader>q <c-w><c-q>

" Set shortcut for vimrc editing
map <leader>v :tabnew ~/.vimrc<CR>
