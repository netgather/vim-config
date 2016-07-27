“测试一下git”
"-----------------------------------------------------------------------
"                             < Vundle设置 >
"-----------------------------------------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
call vundle#begin('$VIM/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line


""中文帮助文档
Plugin 'https://github.com/asins/vimcdoc'

""主题
Plugin 'dracula/vim'

""补全框架
"Plugin 'https://github.com/Shougo/neocomplcache.vim'
Plugin 'https://github.com/Valloric/YouCompleteMe'

""文件列表
Plugin 'https://github.com/scrooloose/nerdtree'

""状态栏
Plugin 'https://github.com/vim-airline/vim-airline'
Plugin 'https://github.com/vim-airline/vim-airline-themes'

""tags
Plugin 'https://github.com/majutsushi/tagbar'

""括号匹配
Plugin 'https://github.com/tpope/vim-surround'

""命令模式增强
Plugin 'https://github.com/gelguy/Cmd2.vim'

""多文件查找
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'

"文件内查找
Plugin 'https://github.com/wincent/ferret'

""书签
Plugin 'https://github.com/MattesGroeger/vim-bookmarks'

""撤销历史
Plugin 'https://github.com/mbbill/undotree'

""有道翻译
Plugin 'https://github.com/ianva/vim-youdao-translater'

""多光标编辑
"Plugin 'https://github.com/terryma/vim-multiple-cursors'

""打开历史文件等
Plugin 'https://github.com/mhinz/vim-startify'

""注释插件
Plugin 'https://github.com/scrooloose/nerdcommenter'

""编码转换
Plugin 'https://github.com/mbbill/fencview'

""自动补全括号
Plugin 'https://github.com/Raimondi/delimitMate'

""格式化
Plugin 'https://github.com/godlygeek/tabular'

""对象增强
Plugin 'https://github.com/tpope/vim-unimpaired'


""其他
Plugin 'https://github.com/tpope/vim-bundler'




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
set nocompatible
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
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"-----------------------------------------------------------------------
"                             < 基本设置 >
"-----------------------------------------------------------------------
"设置窗口大小
set lines=35 columns=150

"配色
syntax enable
"set background=dark
"colorscheme brogrammer
syntax on
color dracula

"字体设置
set guifont=YaHei_Consolas_Hybrid:h12:cANSI


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
set mouse-=a

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

"解决中文乱码
set encoding=utf-8
set fileencodings=utf-8,gbk,gb18030,gk2312,big5

"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"解决consle乱码
language messages zh_CN.utf-8

"vim 自动识别UTF8和GB2312
set fencs=utf-8,gbk

"设置默认编码
set encoding=utf-8

"缩进
set ai!
set autoindent
set shiftwidth=4

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

"设置文件的后缀
set suffixesadd=.java,.html,.css,.js,.sql

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

"上下保持2行距离
set scrolloff=3

"关闭拼写检查
set nospell


"-----------------------------------------------------------------------
"                             < 映射设置 >
"-----------------------------------------------------------------------

"普通模式下，* 查找光标下的单词
"普通模式下，* 查找当前选中的文本
function! s:VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
endfunction
xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>

"禁用光标键
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

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

"回溯历史命令时，避免使用光标键
"cnoremap <C-p> <Up>
"cnoremap <C-n> <Down>

"使用方向键切换buffer
noremap <left> :bp<CR>
noremap <right> :bn<CR>

" 复制选中区到系统剪切板中
vnoremap <leader>y "+y

" 快捷操作
nmap clo :close<cr>
cnoremap <expr> %% getcmdtype()==':' ? expand('%:h').'/' : '%%'

"改变窗口大小
nmap w- :resize -3<CR>   "水平
nmap w= :resize +3<CR>   "水平
nmap w, :vertical resize -3<CR>   "竖直
nmap w. :vertical resize +3<CR>   "竖直



"-----------------------------------------------------------------------
"                             < 字典设置 >
"-----------------------------------------------------------------------

au FileType php setlocal dict+=D:/Program Files (x86)/Vim/vimfiles/dict/php_funclist.dict
au FileType css setlocal dict+=D:/Program Files (x86)/Vim/vimfiles/dict/css.dict
au FileType c setlocal dict+=D:/Program Files (x86)/Vim/vimfiles/dict/c.dict
au FileType cpp setlocal dict+=D:/Program Files (x86)/Vim/vimfiles/dict/cpp.dict
au FileType scale setlocal dict+=D:/Program Files (x86)/Vim/vimfiles/dict/scale.dict
au FileType javascript setlocal dict+=D:/Program Files (x86)/Vim/vimfiles/dict/javascript.dict
au FileType html setlocal dict+=D:/Program Files (x86)/Vim/vimfiles/dict/javascript.dict
au FileType html setlocal dict+=D:/Program Files (x86)/Vim/vimfiles/dict/css.dict

"-----------------------------------------------------------------------
"                          < 普通关键字补全 >
"-----------------------------------------------------------------------

set complete+=k

"-----------------------------------------------------------------------
"                      < Enable omni completion >
"-----------------------------------------------------------------------

"if has("autocmd")
"   filetype on
   "autocmd Filetype SQL setlocal tags+=D:\AppData\Vim\tags\sql\tags
"endif

"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"autocmd FileType java set omnifunc=javacomplete#Complete


"-----------------------------------------------------------------------
"                               < 插件 >
"----------------------------------------------------------------------- 

set helplang=cn

"-- vundle setting --
nmap pi :PluginInstall<cr>
nmap pc :PluginClean<cr>
nmap pl :PluginList<cr>


"-- matchit setting --
set nocompatible
filetype plugin on
runtime macros/matchit.vim


"-- vim-airline setting--
let g:airline_theme = 'kolor'
let g:airline_detect_modified=1
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'x', 'y', 'z' ]
      \ ]
let g:airline#extensions#tabline#enabled = 1


"-- surround setting --
let g:surround_insert_tail = "<++>"
let g:surround_{char2nr("d")} = "<div\1id: \r..*\r id=\"&\"\1>\r</div>"
let g:surround_108 = "\\begin{\1environment: \1}\r\\end{\1\r}.*\r\1}"
let g:surround_45 = "<% \r %>"
let g:surround_61 = "<%= \r %>"


"-- nerdcommenter setting --
let loaded_nerd_comments=1
let NERD_java_alt_style=1
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



"--tagbar setting--"
nnoremap <silent> tb :TagbarToggle<CR>
let g:tagbar_left=0
let g:tagbar_ctags_bin='D:/Program Files (x86)/ctags58/ctags'
let g:tagbar_width=25
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()


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


"-- Nerdtree setting --
nmap nt :NERDTreeToggle<cr>
"autocmd StdinReadPre * let s:std_in=1 "打开vim时自动打开nerdtree"
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif "打开vim时自动打开nerdtree"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "仅剩Nerdtree时退出vim


"-- undotree setting --
nmap ut :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir=D:/AppData/Vim/plugin/undotree/
    set undofile
endif


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


"-- vim-multiple-cursors setting --
let g:multi_cursor_next_key="\<C-s>"


"-----------------------------------------------------------------------
"                               < 脚本 >
"-----------------------------------------------------------------------

"-- 新建.c,.h,.sh,.java文件，自动插入文件头 --
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py exec ":call SetTitle()"
func SetTitle()
	if &filetype == 'sh'
		call setline(1,"\#!/bin/bash")
		call append(line("."), "")
        elseif &filetype == 'python'
                call setline(1,"#!/usr/bin/env python")
                call append(line("."),"# coding=utf-8")
	        call append(line(".")+1, "")
        elseif &filetype == 'ruby'
                call setline(1,"#!/usr/bin/env ruby")
                call append(line("."),"# encoding: utf-8")
	        call append(line(".")+1, "")
	else
		call setline(1, "/*************************************************************************")
		call append(line("."), "	> File Name: ".expand("%"))
		call append(line(".")+1, "	> Author: unixman")
		call append(line(".")+2, "	> Mail: lihongyan1970@outlook.com")
		call append(line(".")+3, "	> Created Time: ".strftime("%c"))
		call append(line(".")+4, " ************************************************************************/")
		call append(line(".")+5, "")
	endif
	if expand("%:e") == 'cpp'
		call append(line(".")+6, "#include<iostream>")
		call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include<stdio.h>")
		call append(line(".")+7, "")
	endif
	if expand("%:e") == 'h'
		call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
		call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
		call append(line(".")+8, "#endif")
	endif
	if &filetype == 'java'
		call append(line(".")+6,"public class ".expand("%:r"))
		call append(line(".")+7,"")
	endif
endfunc
autocmd BufNewFile * normal G


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


"-- 退出时自动保存 --
au InsertLeave *.* write


"-- 换行开关 --
nnoremap <Down> :set wrap! wrap?<CR>
