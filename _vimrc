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
"--Vim增强
"-----------------------------------------------------------

""文件系统
Plugin 'https://github.com/scrooloose/nerdtree'

""tags
Plugin 'https://github.com/majutsushi/tagbar'

""状态栏
Plugin 'https://github.com/vim-airline/vim-airline'
Plugin 'https://github.com/vim-airline/vim-airline-themes'

""为不同的单词着色
Plugin 'https://github.com/dimasg/vim-mark'

""括号匹配
Plugin 'https://github.com/tpope/vim-surround'

""书签
Plugin 'https://github.com/MattesGroeger/vim-bookmarks'

""历史文件
Plugin 'https://github.com/mhinz/vim-startify'

""括号补全
Plugin 'https://github.com/Raimondi/delimitMate'

""快速跳转
"Plugin 'https://github.com/easymotion/vim-easymotion'

""有道词典
Plugin 'https://github.com/ianva/vim-youdao-translater'

""多文件查找
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'

""对象增强
Plugin 'https://github.com/tpope/vim-unimpaired'

""tab增强
Plugin 'https://github.com/ervandew/supertab'

"-----------------------------------------------------------
"--补全
"-----------------------------------------------------------

Plugin 'https://github.com/vim-scripts/OmniCppComplete'
Plugin 'https://github.com/Shougo/neocomplete.vim'

"-----------------------------------------------------------
"--模板
"-----------------------------------------------------------

Plugin 'https://github.com/drmingdrmer/xptemplate'
Plugin 'honza/vim-snippets'

"-----------------------------------------------------------
"--开发
"-----------------------------------------------------------

""Java
Plugin 'https://github.com/artur-shaik/vim-javacomplete2'
Plugin 'https://github.com/yuratomo/java-api-complete'
Plugin 'https://github.com/yuratomo/javap.vim'
Plugin 'https://github.com/yuratomo/java-api-javax'
Plugin 'https://github.com/yuratomo/java-api-org'

""javascript
Plugin 'https://github.com/pangloss/vim-javascript'
Plugin 'https://github.com/ternjs/tern_for_vim'

""html
Plugin 'https://github.com/mattn/emmet-vim'

""Python
Plugin 'https://github.com/klen/python-mode'


"-----------------------------------------------------------
"--语法检查
"-----------------------------------------------------------

Plugin 'scrooloose/syntastic'

"-----------------------------------------------------------
"--注释
"-----------------------------------------------------------

Plugin 'https://github.com/scrooloose/nerdcommenter'

"-----------------------------------------------------------
"--常用工具
"-----------------------------------------------------------

""日历
Plugin 'https://github.com/itchyny/calendar.vim'

""增强命令
Plugin 'https://github.com/tpope/vim-repeat'

""标签自动闭合
Plugin 'https://github.com/tpope/vim-ragtag'


"-----------------------------------------------------------
"--MarkDown
"-----------------------------------------------------------
Plugin 'https://github.com/plasticboy/vim-markdown'


"-----------------------------------------------------------
"--git
"-----------------------------------------------------------

Plugin 'https://github.com/tpope/vim-fugitive'

""""""""""""""""""""""""""""""""""""""""""""""""
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
colorscheme material-theme

"字体设置
set guifont=Droid\ Sans\ Mono:h12:cANSI

"隐藏工具栏
set guioptions-=T

"隐藏菜单栏
"set guioptions-=m

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
:set noswapfile

"解决中文乱码
set encoding=utf-8
set fileencodings=utf-8,gbk,gb18030,gk2312,big5,chinese,latin-1

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
set fencs=utf-8,gbk

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
set clipboard+=unnamed

"超过100个字符时换行
set textwidth=100000000
set formatoptions+=tcarmM

"断行设置
set linebreak
set breakat="`"

"使用vim键盘
set nocompatible

"上下保持3行距离
set scrolloff=3

"关闭拼写检查
set spell

"开启文件类型检测
filetype plugin indent on

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

"-----------------------------------------------------------------------
"                             < 字典设置 >
"-----------------------------------------------------------------------

autocmd filetype javascript set dictionary+=D:/AppData/Vim/directory/dict/javascript.dic
autocmd filetype javascript set dictionary+=D:/AppData/Vim/directory/dict/node.dic
autocmd filetype css set dictionary+=D:/AppData/Vim/directory/dict/css.dic
autocmd filetype java set dictionary+=D:/AppData/Vim/directory/dict/java.dict
autocmd filetype html setlocal dictionary+=D:/AppData/Vim/directory/dict/html.dic

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
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.bak,*.rar,*.7z,*.iso  " Windows
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
  
"-- Bookmarks setting --
let g:bookmark_sign = '>'
let g:bookmark_annotation_sign = '#'
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1                   "自动保存书签
let g:bookmark_manage_per_buffer = 1           "在每个缓冲区管理书签

"-- undotree setting --
"nmap ut :UndotreeToggle<cr>
"if has("persistent_undo")
"    set undodir=D:/AppData/Vim/plugin/undotree/
"    set undofile
"endif

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
let g:startify_custom_header = [
        \ '                                 ________  __ __        ',
        \ '            __                  /\_____  \/\ \\ \       ',
        \ '    __  __ /\_\    ___ ___      \/___//''/''\ \ \\ \    ',
        \ '   /\ \/\ \\/\ \ /'' __` __`\        /'' /''  \ \ \\ \_ ',
        \ '   \ \ \_/ |\ \ \/\ \/\ \/\ \      /'' /''__  \ \__ ,__\',
        \ '    \ \___/  \ \_\ \_\ \_\ \_\    /\_/ /\_\  \/_/\_\_/  ',
        \ '     \/__/    \/_/\/_/\/_/\/_/    \//  \/_/     \/_/    ',
        \ ]

nmap ht :Startify<cr>

"-----------------------------------------------------------------------
"                               < 布局管理 >
"-----------------------------------------------------------------------

"-- vim-airline setting--
let g:airline_theme = 'kolor'
let g:airline_detect_modified=1
let g:airline_powerline_fonts=1
let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'x', 'y', 'z' ]
      \ ]
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1

"-- Nerdtree setting --
nmap nt :NERDTreeToggle<cr>
"autocmd StdinReadPre * let s:std_in=1 "打开vim时自动打开nerdtree"
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif "打开vim时自动打开nerdtree"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "仅剩Nerdtree时退出vim

"--tagbar setting--"
nnoremap <silent> tb :TagbarToggle<CR>
let g:tagbar_left=0
let g:tagbar_ctags_bin='D:/Program Files (x86)/ctags58/ctags'
let g:tagbar_width=25
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
nmap <F9> <Esc>:!ctags -R *<CR>

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
let g:acp_enableAtStartup = 0
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
"let g:neocomplete#enable_auto_select = 1

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

let g:xptemplate_lib_filter = 'D:/Program Files (x86)/Vim/vimfiles/bundle/vim-snippets/UltiSnips'
" Prevent supertab from mapping <tab> to anything.
let g:SuperTabMappingForward = '<Plug>xpt_void'

" Tell XPTemplate what to fall back to, if nothing matches.
" Original SuperTab() yields nothing if g:SuperTabMappingForward was set to
" something it does not know.
let g:xptemplate_fallback = '<C-r>=XPTwrapSuperTab("n")<CR>'

fun! XPTwrapSuperTab(command) "{{{
    let v = SuperTab(a:command)
    if v == ''
        " Change \<Tab> to whatever you want, when neither XPTemplate or
        " supertab needs to do anything.
        return "\<Tab>"
    else
        return v
    end
endfunction "}}}

let g:xptemplate_key = '<Plug>triggerxpt'
inoremap <Plug>closePUM <C-v><C-v><BS>
imap <TAB> <Plug>closePUM<Plug>triggerxpt
" " Optional. Use this only when you have no other plugin like SuperTab to
" " handle <TAB>.
" let g:xptemplate_fallback = 'nore:<TAB>'
let g:xptemplate_minimal_prefix = 0
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
let g:user_emmet_expandabbr_key = '<Tab>'

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

let g:syntastic_error_symbol='!!'
let g:syntastic_warning_symbol='!'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_highlighting=1
let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_javascript_checkers = ['jsl', 'jshint']
let g:syntastic_html_checkers=['tidy', 'jshint']
" 修改高亮的背景色, 适应主题
highlight SyntasticErrorSign guifg=white guibg=black

" to see error location list
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 5
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
"                               < MarkDown >
"-----------------------------------------------------------------------

let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_folding_level = 6
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_toc_autofit = 1
set conceallevel=2
let g:vim_markdown_fenced_languages = ['csharp=cs']
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1

"ge: open the link under the cursor in Vim for editing. Useful for relative markdown links. <Plug>Markdown_EditUrlUnderCursor

"The rules for the cursor position are the same as the gx command.

"]]: go to next header. <Plug>Markdown_MoveToNextHeader

"[[: go to previous header. Contrast with ]c. <Plug>Markdown_MoveToPreviousHeader

"][: go to next sibling header if any. <Plug>Markdown_MoveToNextSiblingHeader

"[]: go to previous sibling header if any. <Plug>Markdown_MoveToPreviousSiblingHeader

"]c: go to Current header. <Plug>Markdown_MoveToCurHeader

"]u: go to parent header (Up). <Plug>Markdown_MoveToParentHeader


"-----------------------------------------------------------------------
"                               < git >
"-----------------------------------------------------------------------

":Gbrowse  open the current file on GitHub
":Ggrep    search the work tree (or any arbitrary commit)
":Glog     loads all previous revisions of a file into the quickfix list so you can iterate over them and watch the file evolve!
":Gstatus  
":Gcommit
":Gdiff
":Gedit    View any blob, tree, commit, or tag in the repository  ##:Gsplit, :Gvsplit, :Gtabedit
"

"-----------------------------------------------------------------------
"                               < 脚本 >
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