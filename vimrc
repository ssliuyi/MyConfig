set nocompatible               " be iMproved
filetype off                   " required!
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
 
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" My plugin
Bundle 'perl-support.vim'
Bundle 'ctags.vim'
Bundle 'taglist.vim'
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
Bundle 'LaTeX-Suite-aka-Vim-LaTeX'
Bundle 'Simple-R-Omni-Completion'
Bundle 'Pydiction'
Bundle 'The-NERD-tree'
Bundle 'Tagbar'
Bundle 'asins/vimcdoc'

filetype plugin indent on     " required!
"
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
"

set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
set showmatch
set matchtime=1
set autowrite
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
nnoremap <F2> :g/^\s*$/d<CR>  
set laststatus=1     "启动显示状态行(1),总是显示状态行(2)  
set foldenable      " 允许折叠  
"set foldmethod=indent   " 手动折叠  
set nu
set fileencodings=utf-8,ucd-bom,gb18030,gbk,gb2312,cp936
set tabstop=4
set sts=4
set expandtab 
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
colorscheme desert
set nobackup
map <F5> :! /usr/bin/python %
map <F6> :call CompileRunGpp()<CR>

func! CompileRunGpp() 
    exec "w"
    "exec ":! ctags -R --c++-kinds=+p --fields=+iaS --extra=+q "
    exec "! clear" 
    exec ":! gcc -g -o%:r %" 
    exec ":!./%:r"
endfunc
"tagbar
"{
nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30
autocmd BufReadPost *.cpp, *.c, *.h, *.hpp, *.cc, *.cxx call tagbar#autoopen()
"}

"omni-completion
"{
autocmd FileType python set omnifunc=pythoncomplete#Complete 
let g:pydiction_location='~/.vim/tools/pydiction/complete-dict'  
"}

"taglist
"{
let Tlist_Auto_Highlight_Tag=1 
"let Tlist_Auto_Open=1 
let Tlist_Auto_Update=1 
let Tlist_Display_Tag_Scope=1 
let Tlist_Exit_OnlyWindow=1 
let Tlist_Enable_Dold_Column=1 
let Tlist_File_Fold_Auto_Close=1 
let Tlist_Show_One_File=1 
let Tlist_Use_Right_Window=1 
let Tlist_Use_SingleClick=1 
nnoremap <Leader>tg :TlistToggle<CR>  “设定F8为taglist开关
"}

"Nerd-tree
"{
map <F7> :NERDTreeToggle<CR>
imap <F7> <ESC>:NERDTreeToggle<CR>
"}

runtime! ftplugin/man.vim

set hlsearch
set autoindent                  " copy indent from current line
set autoread                    " read open files again when changed outside Vim
set autowrite                   " write a modified buffer on each :next , ...
set backspace=indent,eol,start  " backspacing over everything in insert mode
"set backup                      " keep a backup file
set browsedir=current           " which directory to use for the file browser
set complete+=k                 " scan the files given with the 'dictionary' option
set history=50                  " keep 50 lines of command line history
set hlsearch                    " highlightthe last used search pattern
set incsearch                   " do incremental searching
set listchars=tab:>.,eol:\$     " strings to use in 'list' mode
set mouse=a                     " enable the use of the mouse
set wrap                      "   wrap lines
set popt=left:8pc,right:3pc     " print options
set ruler                       " show the cursor position all the time
"set shiftwidth=2                " number of spaces to use for each step of indent
set showcmd                     " display incomplete commands
set smartindent                 " smart autoindenting when starting a new line
"set tabstop=2                   " number of spaces that a <Tab> counts for
set visualbell                  " visual bell instead of beeping
set wildignore=*.bak,*.o,*.e,*~ " wildmenu: ignore these extensions
set wildmenu                    " command-line completion in an enhanced mode
"
"-------------------------------------------------------------------------------
"  highlight paired brackets
"-------------------------------------------------------------------------------
highlight MatchParen ctermbg=blue guibg=lightyellow

inoremap  ,  ,<Space>
"
"-------------------------------------------------------------------------------
" autocomplete parenthesis, (brackets) and braces
"-------------------------------------------------------------------------------
inoremap  (  ()<Left>
inoremap  [  []<Left>
inoremap  {  {}<Left>
"
vnoremap  (  s()<Esc>P<Right>%
vnoremap  [  s[]<Esc>P<Right>%
vnoremap  {  s{}<Esc>P<Right>%
"
" surround content with additional spaces
"
vnoremap  )  s(  )<Esc><Left>P<Right><Right>%
vnoremap  ]  s[  ]<Esc><Left>P<Right><Right>%
vnoremap  }  s{  }<Esc><Left>P<Right><Right>%
set vb t_vb="
" vim-powerline
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'unicode'
set encoding=utf8
"vimcdoc
"{
set helplang=cn
"}

"shift tab page
"{
 map <S-Left> :tabp<CR>
 map <S-Right> :tabn<CR>
"}
