"-----------------------------------------------------------------------
"                             < Vundle设置 >
"-----------------------------------------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
call vundle#begin('$VIM/vimfiles/bundle/')

"----------------------------------------------------------
"--基本
"----------------------------------------------------------

Plugin 'https://github.com/VundleVim/Vundle.vim'
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'https://github.com/wincent/command-t'
Plugin 'https://github.com/rstacruz/sparkup'
Plugin 'https://github.com/ascenator/L9'


"-----------------------------------------------------------
"--样式美化
"-----------------------------------------------------------

""文件系统
Plugin 'https://github.com/scrooloose/nerdtree'

""tags
Plugin 'https://github.com/majutsushi/tagbar'

""状态栏
Plugin 'https://github.com/vim-airline/vim-airline'
Plugin 'https://github.com/vim-airline/vim-airline-themes'

""历史文件
"Plugin 'https://github.com/mhinz/vim-startify'

""图标
Plugin 'https://github.com/ryanoasis/vim-devicons'


"-----------------------------------------------------------
"--Vim功能增强
"-----------------------------------------------------------

""给选中的文本加分隔符 ()/[]/{}/''/""
Plugin 'https://github.com/tpope/vim-surround'

""书签
Plugin 'https://github.com/MattesGroeger/vim-bookmarks'

""单引号、双引号匹配
Plugin 'https://github.com/Raimondi/delimitMate'

""有道词典
Plugin 'https://github.com/ianva/vim-youdao-translater'

""多文件查找
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'

""对象增强
Plugin 'https://github.com/tpope/vim-unimpaired'

""tab增强
Plugin 'https://github.com/ervandew/supertab'

""多光标
Plugin 'https://github.com/terryma/vim-multiple-cursors'

""日历
Plugin 'https://github.com/itchyny/calendar.vim'

""增强命令
Plugin 'https://github.com/tpope/vim-repeat'

""标签自动闭合
Plugin 'https://github.com/tpope/vim-ragtag'

""txt文件高亮
Plugin 'https://github.com/vim-scripts/txt.vim'

""撤销历史
Plugin 'https://github.com/mbbill/undotree'

""快速跳转
Plugin 'https://github.com/easymotion/vim-easymotion'


"-----------------------------------------------------------
"--vim操作符扩展
"-----------------------------------------------------------

""注释--gc
Plugin 'https://github.com/tpope/vim-commentary'


"-----------------------------------------------------------
"--vim动作命令扩展
"-----------------------------------------------------------

""文本对象--ie、ae
"Plugin 'https://github.com/kana/vim-textobj-entire'


"-----------------------------------------------------------
"--补全框架
"-----------------------------------------------------------

Plugin 'https://github.com/vim-scripts/OmniCppComplete'
Plugin 'https://github.com/Shougo/neocomplete.vim'
"Plugin 'https://github.com/vim-scripts/AutoComplPop'
Plugin 'https://github.com/Shougo/neocomplcache-rsense.vim'

"-----------------------------------------------------------
"--补全模板
"-----------------------------------------------------------

Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'


"-----------------------------------------------------------
"--开发环境
"-----------------------------------------------------------

""Java
Plugin 'https://github.com/Shougo/vim-javacomplete2'
Plugin 'https://github.com/yuratomo/java-api-complete'
Plugin 'https://github.com/yuratomo/java-api-javax'
Plugin 'https://github.com/yuratomo/java-api-org'
Plugin 'https://github.com/yuratomo/java-api-sun'

""javascript
Plugin 'https://github.com/pangloss/vim-javascript'

""html
Plugin 'https://github.com/mattn/emmet-vim'
Plugin 'https://github.com/alvan/vim-closetag'


""Python
Plugin 'https://github.com/klen/python-mode'

""Ruby
Plugin 'https://github.com/tpope/vim-rails'
Plugin 'https://github.com/vim-scripts/ruby_imaps'

"-----------------------------------------------------------
"--注释
"-----------------------------------------------------------

Plugin 'https://github.com/scrooloose/nerdcommenter'


"-----------------------------------------------------------
"--语法检查
"-----------------------------------------------------------

Plugin 'https://github.com/vim-syntastic/syntastic'


"-----------------------------------------------------------
"--编译运行
"-----------------------------------------------------------

"Plugin 'https://github.com/janko-m/vim-test'


"-----------------------------------------------------------
"--markdown
"-----------------------------------------------------------

Plugin 'https://github.com/hallison/vim-markdown'
Plugin 'https://github.com/iamcco/markdown-preview.vim'


"-----------------------------------------------------------
"--Git
"-----------------------------------------------------------

Plugin 'junegunn/gv.vim'


"-----------------------------------------------------------
"--延时加载
"-----------------------------------------------------------

Plugin 'https://github.com/Shougo/dein.vim'



"------------------------------------------------------------------------------------------------------------------------"
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"-----------------------------------------------------------------------
"                             < 系统设置 >
"-----------------------------------------------------------------------

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
let opt = '-a --binary '
if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
let arg1 = v:fname_in
if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
let arg2 = v:fname_new
if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
let arg3 = v:fname_out
if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
if $VIMRUNTIME =~ ' '
if &sh =~ '\<cmd'
if empty(&shellxquote)
let l:shxq_sav = ''
set shellxquote&
endif
let cmd = '"' . $VIMRUNTIME . '\diff"'
else
let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
endif
else
let cmd = $VIMRUNTIME . '\diff'
endif
silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
if exists('l:shxq_sav')
let &shellxquote=l:shxq_sav
endif
endfunction



"-----------------------------------------------------------------------
"                             < 基本设置 >
"-----------------------------------------------------------------------

"设置窗口大小
set lines=35 columns=120

"配色
syntax enable
set background=dark
colorscheme Spacedust

"字体设置
set guifont=DejaVuSansMonoForPowerline\ Nerd:h11:cANSI

"隐藏工具栏
set guioptions-=T

"隐藏菜单栏
set guioptions-=m

"自适应不同语言的智能缩进
filetype indent on

"语法高亮
syntax on

"显示行号
set nu

"禁用鼠标
"set mouse-=a

"禁用滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"设置当文件被改动时自动载入
set autoread

"数字变成十进制
set nrformats=

"显示未完成的命令
set showcmd

"不要备份文件
set nobackup

"不产生交换文件
set noswapfile

"解决中文乱码
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp936,gbk,gb18030,gk2312,latin-1,ucs-bom,gb2312
let &termencoding=&encoding
language messages zh_CN.UTF-8

"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"解决终端乱码
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif

"解决consle乱码
language messages zh_CN.utf-8

"vim 自动识别UTF8和GB2312
set fencs=utf-8,gbk,cp936

"设置默认编码
set encoding=utf-8

"缩进
set ai
set shiftwidth=2
set tabstop=2
set sts=2
set expandtab

"按Ctrl+N进行缓冲区关键字补全
set completeopt=longest,menu

"开启增量查找
set incsearch

"不重新搜索
"set nowrapscan

"Tab Ex命令行补全
set wildmenu
set wildmode=full

"设置历史命令数
set history=200

"关闭错误提示声音
set noeb
set vb t_vb=

"共享剪切板
"set clipboard+=unnamed

"超过100个字符时换行
set textwidth=100000000
set formatoptions+=tcarmM

"断行设置
"set linebreak
"set breakat="`"

"使用vim键盘
set nocompatible

"上下保持3行距离
set scrolloff=3

"关闭拼写检查
set spell

"开启文件类型检测
filetype plugin indent on

let g:fencview_autodetect=1

" 总是显示状态栏
set laststatus=2

" 高亮显示搜索结果
set hlsearch
"-----------------------------------------------------------------------
"                             < 映射设置 >
"-----------------------------------------------------------------------

"重新映射面向行的动作命令
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" 在不同的窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" 关闭高亮匹配项和打开高亮匹配项
nnoremap <silent> <C-u> :<C-l>nohlsearch<CR><C-l>

"使用方向键切换buffer
noremap <left> :bp<CR>
noremap <right> :bn<CR>

" 复制选中区到系统剪切板中
vnoremap <leader>y "+y

" 快捷操作
nmap clo :close<cr>
cnoremap <expr> %% getcmdtype()==':' ? expand('%:h').'/' : '%%'

"改变窗口大小
nmap w, :resize -3<CR>            "水平
nmap w. :resize +3<CR>            "水平
nmap q, :vertical resize -3<CR>   "竖直
nmap q. :vertical resize +3<CR>   "竖直

"模拟Emacs


"-----------------------------------------------------------------------
"                             < 字典设置 >
"-----------------------------------------------------------------------

autocmd filetype javascript set dictionary+=D:/AppData/Vim/directory/dict/javascript.dict
autocmd filetype javascript set dictionary+=D:/AppData/Vim/directory/dict/node.dict
autocmd filetype css set dictionary+=D:/AppData/Vim/directory/dict/css.dict
autocmd filetype java set dictionary+=D:/AppData/Vim/directory/dict/java.dict
autocmd filetype html setlocal dictionary+=D:/AppData/Vim/directory/dict/html.dict
autocmd filetype ruby setlocal dictionary+=D:/AppData/Vim/directory/dict/ruby.dict

"-----------------------------------------------------------------------
"                          < 普通关键字补全 >
"-----------------------------------------------------------------------

set complete+=k

"-----------------------------------------------------------------------
"                      < Enable omni completion >
"-----------------------------------------------------------------------

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType ruby set omnifunc=rubycomplete#Complete

"-----------------------------------------------------------------------
"                               < 管理插件 >
"-----------------------------------------------------------------------

"-- vundle setting --
nmap pi :PluginInstall<cr>
nmap pc :PluginClean<cr>
nmap pl :PluginList<cr>

"-----------------------------------------------------------------------
"                               < 基本插件 >
"-----------------------------------------------------------------------

"-- SuperTab setting --
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

"-- Ctrlp setting --
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nmap gm :CtrlPMRU<cr>
nmap gb :CtrlPBuffer<cr>
nmap ga :CtrlPMixed<cr>
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.bak,*.rar,*.7z,*.iso  
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/]\.(git|hg|svn)$',
\ 'file': '\v\.(so|dll)$',
\ 'link': 'some_bad_symbolic_links',
\ }

"-- Bookmarks setting --
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '⚑'                               
let g:bookmark_annotation_sign = '✎'
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1                  
let g:bookmark_manage_per_buffer = 1

"-- youdao-translater setting --
vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> <C-T> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>

"-- startify setting --
let g:startify_session_dir = 'D:/AppData/Vim/plugin/startify/session'
let g:startify_list_order = ['files', 'dir', 'sessions', 'bookmarks',
\ 'commands']
let g:startify_list_order = [
\ ['   My most recently', '   used files'],
\ 'files',
\ ['   My most recently used files in the current directory:'],
\ 'dir',
\ ['   These are my sessions:'],
\ 'sessions',
\ ['   These are my bookmarks:'],
\ 'bookmarks',
\ ['   These are my commands:'],
\ 'commands',
\ ]
let g:startify_commands = [
\ ':help reference',
\ ['Vim Reference', 'h ref'],
\ {'h': 'h ref'},
\ {'m': ['My magical function', 'call Magic()']},
\ ]
let g:startify_files_number = 10
let g:startify_files_number = 10
let g:startify_enable_unsafe = 0
let g:startify_session_autoload = 0
let NERDTreeHijackNetrw = 0
let g:startify_custom_header = [
\ '                                 ________  __ __        ',
\ '            __                  /\_____  \/\ \\ \       ',
\ '    __  __ /\_\    ___ ___      \/___//''/''\ \ \\ \    ',
\ '   /\ \/\ \\/\ \ /'' __` __`\        /'' /''  \ \ \\ \_ ',
\ '   \ \ \_/ |\ \ \/\ \/\ \/\ \      /'' /''__  \ \__ ,__\',
\ '    \ \___/  \ \_\ \_\ \_\ \_\    /\_/ /\_\  \/_/\_\_/  ',
\ '     \/__/    \/_/\/_/\/_/\/_/    \//  \/_/     \/_/    ',
\ ]
let g:startify_skiplist = [
\ 'COMMIT_EDITMSG',
\ escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc',
\ 'bundle/.*/doc',
\ ]
nmap ht :Startify<cr>


"-- vim-multiple-cursors setting --
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_key='<F6>'
let g:multi_cursor_start_word_key='g<C-n>'
let g:multi_cursor_next_key='<S-n>'
let g:multi_cursor_skip_key='<S-k>'


"-----------------------------------------------------------------------
"                               < 功能增强 >
"-----------------------------------------------------------------------

""开启matchit   --在匹配括号间快速跳转
set nocompatible
filetype plugin on
runtime macros/matchit.vim


"-----------------------------------------------------------------------
"                               < 布局管理 >
"-----------------------------------------------------------------------

"-- vim-airline setting--
let g:airline_theme = 'tomorrow'
let g:airline_powerline_fonts=1
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#default#layout = [
\ [ 'a','b','c' ],
\ [ 'y','z']
\ ]
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '¶'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '№'                   
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.crypt = ''


"-- Nerdtree setting --
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$','\.bak$','\.doc$','\.docx$','\.dll$', '\.exe$','\.xlsx$','\.ico$','\.png$','\.gif$','\.icon$','\.img$','\.mp3$','\.mp4$','\.wav$','\.zip$','\.rar$','\.7z$','\.tar$']
"autocmd StdinReadPre * let s:std_in=1 "打开vim时自动打开nerdtree"
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif "打开vim时自动打开nerdtree"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "仅剩Nerdtree时退出vim
nmap nt :NERDTreeToggle<cr>


"--tagbar setting--"
nnoremap <silent> tb :TagbarToggle<CR>
let g:tagbar_left=0
let g:tagbar_ctags_bin='D:/Program Files (x86)/ctags58/ctags'
let g:tagbar_width=25
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
nmap <F9> <Esc>:!ctags -R *<CR>


"-----------------------------------------------------------------------
"                               < 快速跳转 >
"-----------------------------------------------------------------------

let g:EasyMotion_smartcase = 1
let g:EasyMotion_leader_key='<Space>'


"-----------------------------------------------------------------------
"                               < 补全框架 >
"-----------------------------------------------------------------------

"-- omnicppcomplete setting --
set completeopt=menu,menuone,longest
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_SelectFirstItem = 2
let OmniCpp_NamespaceSearch = 2
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DisplayMode=1
let OmniCpp_ShowScopeInAbbr=1
let OmniCpp_ShowAccess=1
if has("autocmd")
filetype on
autocmd Filetype java setlocal tags+=D:\AppData\Vim\tags\Java\jdk1.6\tags
endif

"-- neocomplete setting --
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 1
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
\ 'default' : '',
\ 'vimshell' : $HOME.'/.vimshell_hist',
\ 'scheme' : $HOME.'/.gosh_completions'
\ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
" For no inserting <CR> key.
"return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


"-----------------------------------------------------------------------
"                               < 补全模板 >
"-----------------------------------------------------------------------

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'


"-----------------------------------------------------------------------
"                               < 开发环境 >
"-----------------------------------------------------------------------

" < Java >
"-- javacomplete setting --
setlocal omnifunc=javacomplete#Complete
inoremap <C-j> <C-X><C-U><C-P>

"-- java-api-complete setting--
au BufNewFile,BufRead *.java    setl omnifunc=javaapi#complete
au CompleteDone *.java          call javaapi#showRef()
au BufNewFile,BufRead *.java    inoremap <expr> <c-down> javaapi#nextRef()
au BufNewFile,BufRead *.java    inoremap <expr> <c-up>   javaapi#prevRef()
if has("balloon_eval") && has("balloon_multiline")
au BufNewFile,BufRead *.java  setl bexpr=javaapi#balloon()
au BufNewFile,BufRead *.java  setl ballooneval
endif
let g:javaapi#delay_dirs = [
\ 'java-api-javax',
\ 'java-api-org',
\ 'java-api-sun',
\ ]

"-- javap setting --
let g:javap_defines = [
\ { 'jar' : $JAVA_HOME.'/jre/lib/rt.jar', 'javadoc' : 'file:D:/AppData/Java/jdk-8u101-docs-all/docs/api/index.html' },
\ ]


" < Python >


" < JavaScript >

"TernDef: Jump to the definition of the thing under the cursor.

"TernDoc: Look up the documentation of something.

"TernType: Find the type of the thing under the cursor.

"TernRefs: Show all references to the variable or property under the cursor.

"TernRename: Rename the variable under the cursor.


" < HTML >

"-- emmet setting --

"let g:user_emmet_expandabbr_key = '<Tab>'

" < CSS >



"-- Python setting --
" Override go-to.definition key shortcut to Ctrl-]
let g:pymode_rope_goto_definition_bind = "<C-]>"

" Override run current python file key shortcut to Ctrl-Shift-e
let g:pymode_run_bind = "<C-S-e>"

" Override view python doc key shortcut to Ctrl-Shift-d
let g:pymode_doc_bind = "<C-S-d>"


"-----------------------------------------------------------------------
"                               < 注释 >
"-----------------------------------------------------------------------

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

""命令
"[count]<leader>cc |NERDComComment|
"Comment out the current line or text selected in visual mode.

"[count]<leader>cn |NERDComNestedComment|
"Same as cc but forces nesting.

"[count]<leader>c<space> |NERDComToggleComment|
"Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.

"[count]<leader>cm |NERDComMinimalComment|
"Comments the given lines using only one set of multipart delimiters.

"[count]<leader>ci |NERDComInvertComment|
"Toggles the comment state of the selected line(s) individually.

"[count]<leader>cs |NERDComSexyComment|
"Comments out the selected lines with a pretty block formatted layout.

"[count]<leader>cy |NERDComYankComment|
"Same as cc except that the commented line(s) are yanked first.

"<leader>c$ |NERDComEOLComment|
"Comments the current line from the cursor to the end of line.

"<leader>cA |NERDComAppendComment|
"Adds comment delimiters to the end of line and goes into insert mode between them.

"|NERDComInsertComment|
"Adds comment delimiters at the current cursor position and inserts between. Disabled by default.

"<leader>ca |NERDComAltDelim|
"Switches to the alternative set of delimiters.

"[count]<leader>cl
"[count]<leader>cb |NERDComAlignedComment|

"Same as |NERDComComment| except that the delimiters are aligned down the left side (<leader>cl) or both sides (<leader>cb).

"[count]<leader>cu |NERDComUncommentLine|
"Uncomments the selected line(s).


"-----------------------------------------------------------------------
"                               < 语法检查 >
"-----------------------------------------------------------------------

function QfMakeConv()
let qflist = getqflist()
for i in qflist
let i.text = iconv(i.text, "utf-8", "cp936")
endfor
call setqflist(qflist)
endfunction
au QuickfixCmdPost make call QfMakeConv()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_error_symbol='✗'   ""
let g:syntastic_warning_symbol='⚠'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_highlighting=1
let g:syntastic_loc_list_height=5
let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_javascript_checkers = ['jsl', 'jshint']
let g:syntastic_html_checkers=['tidy', 'jshint']
highlight SyntasticErrorSign guifg=white guibg=red
highlight SyntasticError guibg=#2f0000
let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
set signcolumn=yes
set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
function! ToggleErrors()
let old_last_winnr = winnr('$')
lclose
if old_last_winnr == winnr('$')
" Nothing was closed, open syntastic error location panel
Errors
endif
endfunction
nnoremap <Leader>er :call ToggleErrors()<cr>
nnoremap <Leader>sn :lnext<cr>
nnoremap <Leader>sp :lprevious<cr>


"-----------------------------------------------------------------------
"                            < MarkDown >
"-----------------------------------------------------------------------

"-- markdown-preview setting --
" 设置 chrome 浏览器的路径（或是启动 chrome（或其他现代浏览器）的命令）
let g:mkdp_path_to_chrome = "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"

" 设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览，只在打开
" markdown 文件的时候打开一次
let g:mkdp_auto_start = 0

" 设置为 1 在编辑 markdown 的时候检查预览窗口是否已经打开，否则自动打开预
" 览窗口
let g:mkdp_auto_open = 0

" 在切换 buffer 的时候自动关闭预览窗口，设置为 0 则在切换 buffer 的时候不
" 自动关闭预览窗口
let g:mkdp_auto_close = 0

" 设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时
" 更新预览
let g:mkdp_refresh_slow = 0

"快捷键
nnoremap <Leader><F3> :MarkdownPreview<cr>
nnoremap <Leader><F4> :MarkdownPreviewStop<cr>


"-----------------------------------------------------------------------
"                               < git >
"-----------------------------------------------------------------------

"":GV to open commit browser
"":GV! will only list commits that affected the current file
"":GV? fills the quickfix window with the revisions of the current file


"-----------------------------------------------------------------------
"                           < vim-devicons >
"-----------------------------------------------------------------------

filetype plugin indent on
set encoding=utf-8
set laststatus=2
set t_Co=256
let g:WebDevIconsOS = 'Darwin'
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsDefaultFolderOpenSymbol = '▣'
let g:airline_powerline_fonts=1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderPatternMatching = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['txt'] = '✍'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['myext'] = '☯'


"-----------------------------------------------------------------------
"                            < 文本文件高亮 >
"-----------------------------------------------------------------------

au BufRead,BufNewFile * setfiletype txt 


"-----------------------------------------------------------------------
"                             < 撤销历史 >
"-----------------------------------------------------------------------

"-- undotree setting --
nmap ut :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir=D:/AppData/Vim/plugin/undotree/
    set undofile
endif


"-----------------------------------------------------------------------
"                              < 天气 >
"-----------------------------------------------------------------------

"-----------------------------------------------------------------------
"                              < 脚本 >
"-----------------------------------------------------------------------

"-- 代码格式优化 --
func FormartSrc()
exec "w"
if &filetype == 'c'
exec "!astyle --style=ansi -a --suffix=none %"
elseif &filetype == 'cpp' || &filetype == 'hpp'
exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
elseif &filetype == 'perl'
exec "!astyle --style=gnu --suffix=none %"
elseif &filetype == 'py'||&filetype == 'python'
exec "r !autopep8 -i --aggressive %"
elseif &filetype == 'java'
exec "!astyle --style=java --suffix=none %"
elseif &filetype == 'jsp'
exec "!astyle --style=gnu --suffix=none %"
elseif &filetype == 'xml'
exec "!astyle --style=gnu --suffix=none %"
else
exec "normal gg=G"
return
endif
exec "e! %"
endfunc
map <F2> :call FormartSrc()<CR><CR>

"-- 代码折叠 --
set foldenable
set foldmethod=indent
set foldlevel=99
let g:FoldMethod = 0
fun! ToggleFold()
if g:FoldMethod == 0
exe "normal! zM"
let g:FoldMethod = 1
else
exe "normal! zR"
let g:FoldMethod = 0
endif
endfun
nnoremap <Up> :call ToggleFold() <CR>

"-- 全屏切换 --
"#非插入模式下F11全屏
"#插入模式下F11全屏
if has('win32')
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
imap <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
endif

"-- 换行开关 --
nnoremap <Down> :set wrap! wrap?<CR>


"-----------------------------------------------------------------------
"                               < 常用工具 >
"-----------------------------------------------------------------------
"-- Calendar --
":Calendar -view=year"
":Calendar 2000 1 1"
":Calendar -view=year -split=vertical -width=27"
":Calendar -view=year -split=horizontal -position=below -height=12"
":Calendar -first_day=monday"
":Calendar -view=clock"

"-----------------------------------------------------------------------
"                               < 编译运行 >
"-----------------------------------------------------------------------

map <F5> :call CompileAndRun()<CR>
imap <F5> <ESC>:call CompileAndRun()<CR>
func! CompileAndRun()
exec "w"
exec "cd %:p:h"
if &filetype == 'c'
silent exec "!g++ % -o %<"
silent exec "! ./%<"
elseif &filetype == 'cpp'
silent exec "!g++ % -o %<"
silent exec "! ./%<"
elseif &filetype == 'java' 
silent exec "!javac %" 
exec "!java %<"
elseif &filetype == 'sh'
silent exec '!start cmd /C sh ' . shellescape(expand("%")) . ' & pause'
elseif &filetype == 'js'  
exec "!node %<"
elseif &filetype == 'py'  
silent exec '!start cmd /C python ' . shellescape(expand("%")) . ' & pause'
endif
endfunc
