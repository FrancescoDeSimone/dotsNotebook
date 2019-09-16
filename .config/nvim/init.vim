set runtimepath+=~/.vim/plugged
call plug#begin('~/.vim/plugged')
Plug 'ayu-theme/ayu-vim'
Plug 'vim-scripts/valgrind.vim'
Plug 'sotte/presenting.vim'
Plug 'haya14busa/is.vim' 
""Plug 'vim-scripts/SyntaxRange'
""Plug 'panozzaj/vim-autocorrect'
""Plug 'w0rp/ale'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-endwise'
Plug 'reedes/vim-wordy'
""Plug 'reedes/vim-litecorrect'
Plug 'Shougo/neoinclude.vim'
Plug 'moby/moby' , {'rtp': '/contrib/syntax/vim/'}
Plug 'aklt/plantuml-syntax'
Plug 'justinmk/vim-syntax-extra'
"Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/undotree'
Plug '907th/vim-auto-save'
""Plug 'dsummersl/vimunit'
""Plug 'hari-rangarajan/cctree' lo devo ancora far funzionare
Plug 'rentalcustard/exuberant-ctags'
Plug 'majutsushi/tagbar'
Plug 'svermeulen/vim-yoink'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'hdima/python-syntax'
Plug 'roxma/nvim-yarp'
"Plug 'osyo-manga/vim-watchdogs'
"Plug 'Shougo/vimproc.vim', {'do' : 'make'}
"Plug 'osyo-manga/shabadou.vim'
"Plug 'cohama/vim-hier'
"Plug 'dannyob/quickfixstatus'
Plug 'greyblake/vim-preview'
"Plug 'thinca/vim-quickrun'
Plug 'unblevable/quick-scope'
Plug 'udalov/kotlin-vim'
""Plug 'alfredodeza/pytest.vim'
Plug 'tomlion/vim-solidity'
Plug 'junegunn/vim-github-dashboard'
Plug 'julialang/julia-vim'
""Plug 'vim-scripts/AutoClose'
Plug 'sophacles/vim-processing'
Plug 'jcf/vim-latex'
Plug 'vim-scripts/bash-support.vim'
Plug 'potatoesmaster/i3-vim-syntax'
""Plug 'vim-utils/vim-man'
" Plug 'neoclide/coc.nvim'
Plug 'vim-scripts/sudo.vim'
Plug 'hallison/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'shougo/neosnippet-snippets'
Plug 'tpope/vim-commentary'
""Plug 'janko-m/vim-test'
Plug 'terryma/vim-multiple-cursors'
Plug 'elzr/vim-json'
Plug 'yggdroot/indentline'
"Plug 'klen/python-mode'
Plug 'xolox/vim-misc'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'jiangxincode/mpi.vim'
Plug 'junegunn/fzf'
"Plug 'xolox/vim-easytagsDTreeToggle
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/c.vim'
Plug 'scrooloose/syntastic'
Plug 'lilydjwg/colorizer'
Plug 'derekwyatt/vim-scala'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
""Plug 'UndeadLeech/vim-undead'
""Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'leafgarland/typescript-vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'ervandew/supertab'
Plug 'shougo/neosnippet.vim'
"Plug 'alvan/vim-closetagDTreeToggleG'
Plug 'roxma/vim-paste-easy'
call plug#end()

nmap <C-t> :NERDTreeToggle<cr>
nmap <C-u> :UndotreeToggle<cr>
nmap <C-s> :AutoSaveToggle<cr>
nmap <C-left> <C-w><left> 
nmap <C-right> <C-w><right> 
nmap <S-left> <C-w>< 
nmap <S-right> <C-w>> 

let g:deoplete#enable_at_startup = 1
let g:auto_save = 0 
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:php_sql_query = 1
let g:php_htmlInStrings = 1
let g:undotree_SetFocusWhenToggle = 1
let g:airline_theme='papercolor'
let g:move_key_modifier = 'M'
"let g:deoplete#sources = {'_': ['ale', 'foobar']}
let g:ale_completion_enabled = 1
let g:paste_easy_enable=1

set relativenumber
set number
set undolevels=10000
set ruler
set smarttab
set smartindent
set smartcase
set showbreak=<--
set tabstop=4
set shiftwidth=4
set softtabstop=4
set showcmd 
set showmatch 
set splitbelow
set updatetime=500
set cmdheight=1
set noshowmode
set ttyfast
set magic
set hlsearch
set lazyredraw
set colorcolumn=80
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set background=dark
set laststatus=2

set termguicolors     " enable true colors support
let ayucolor="mirage"   " for dark version of theme
colorscheme ayu

set nocompatible
filetype plugin on       " may already be in your .vimrc

" augroup litecorrect
"   autocmd!
"   autocmd FileType markdown,mkd call litecorrect#init()
"   autocmd FileType textile call litecorrect#init()
" augroup END
