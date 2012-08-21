" ------------ Author: alanerzhao -----------------"
" ----------------- Email: alanerzhao@gmail.com -----------------"
" ----------------- WebSite: http://www.rankber.com -----------------"
" ----------------- Date: 2012-08-21 -----------------"
""TODO
""增加了Less 高亮功能
""增加了HTML5提示
""更新了color插件
""Javascript配色过重，如果需要换回默认把syntax里的old改成javascript把原有的删掉即可
""移动了acp插件在acp文件夹，
"编辑器改用英文"
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

""修改_vimrc后自动生效
autocmd! bufwritepost _vimrc source %

""字体设置
if has("win32")
   ""set guifont=Yahei_Monaco:h10
    exec 'set guifont='.iconv('Consolas', &enc, 'gbk').':h10:cANSI'
    ""exec 'set guifontwide='.iconv('楷体', &enc, 'gbk').':h14'
endif

"" encoding编码设置
"" set encoding=utf-8
set termencoding=utf-8
if has ('win32')
     language english
    set fileencoding=utf-8
else
    set fileencoding=utf-8
endif
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
""更改为英文
set langmenu=english.utf-8
""set langmenu=gb2312.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

language messages english.GB2312

""编辑配置:
"" set shortmess=atI    " 启动的时候不显示那个援助索马里儿童的提示
 set linespace=4
 set autoindent         ""自动对齐
 set smartindent        ""智能自动缩进
 set shiftwidth=4       ""换行时行间交错4空格
 set tabstop=4          ""设置tab键的宽度
 set softtabstop=4      ""退格键删除4空格
 set expandtab          ""缩进采用空格
 set number             ""显示行号
 ""set textwidth=80       ""每行80个字符自动换行
 set ruler              ""显示标尺
 set mouse=a            ""启用鼠标
 set noerrorbells
 set novisualbell
 set t_vb=             "关闭提示音
 set nocp               ""不兼容vi
 set autoread           ""自动重新读入
 set backspace=indent,eol,start ""插入模式下使用 <BS>、<Del> <C-W> <C-U>
 set nospell            ""拼写检查
 set cursorline         "" 高亮光标所在的行
 set showmatch          ""括号配对情况
 set noignorecase       ""搜索区分大小写
 set hlsearch           "" 开启高亮显示结果
 set incsearch          "" 开启实时搜索功能
 set nobomb             ""不使用Unicode bom签名
 set nobackup           ""关闭备份
 set noswapfile         ""关闭.swp
 set history=500        ""保留历史记录
 set showcmd             "" 状态栏显示目前所执行的指令
 set wildmenu           ""命令行于状态行
 set foldmethod=marker  "" 代码折叠
 set tabpagemax=9       ""标签最多显示9页
 set showtabline=1      ""标签默认显示1页
 set wrap               ""设置自动换行
"" set clipboard+=unnamed ""共享剪贴板
 set ambiwidth=double   ""防止符号无法显示
 set list               ""tab符号
 set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
 set laststatus=2       "" 开启状态栏信息
 ""换行
 set whichwrap+=<,>,h,l,b,s,[,]
" 自动完成
set complete=.,w,b,k,t,i
set completeopt=longest,menu
" 使用 Ctrl+C 或 Y 复制到系统剪贴板
""vnoremap <C-C> "+y
""vnoremap Y "+y
 syntax on                 "文件侦测
 filetype plugin indent on "不同文件类型加载插件
 syntax enable             "语法高亮

"黓认状态栏格式
hi StatusLine  guifg=#FFFFFF guibg=#393939 gui=none
if version >= 700
    autocmd InsertEnter * hi StatusLine guifg=#E0E0E0 guibg=Grey40 gui=none
    autocmd InsertLeave * hi StatusLine guifg=#FFFFFF guibg=#393939 gui=none
endif

" 设置状态栏格式
set statusline=\ %F%m%r%h\ [%Y]\ [%{&ff}]\ %w\ \ \ \ \ Encoding:\ %{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\"[BOM]\":\"\")}\ \ \ \ \ Line:\ %l\|%L:%c\ [%p%%-%P]

""插件相关配置

"日历
map ca :Calendar<CR>

""MRU相当于以前打开
map <leader>h :MRU <cr>
let MRU_Max_Entries = 1000
let MRU_Max_Menu_Entries = 20
let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'
let MRU_Window_Height = 8

""NERDTree快捷键
map <F10> :NERDTreeToggle<CR>
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 2
let NERDTreeIgnore=['\.pyc$','\.svn$','\.tmp$','\.bak$','\~$']
set modifiable
""作者相关
let g:vimrc_author='alanerzhao'
let g:vimrc_email='alanerzhaogmail.com'
let g:vimrc_homepage='http://www.xsnail.com'
nmap <F3> :AuthorInfoDetect<cr>

""BufExplorer
nmap <f3>  :BufExplorer<CR>
let g:bufExplorerDefaultHelp=0
let g:bufExplorerMaxHeight=25
let g:bufExplorerResize=1
let g:bufExplorerShowRelativePath=1
let g:bufExplorerSortBy='mru'
let g:bufExplorerSplitBelow=1
let g:bufExplorerSplitRight=0        " 从左边出
let g:bufExplorerSplitVertSize = 30  " 分开高度
let g:bufExplorerSplitVertical=1     " 垂直分开
let g:bufExplorerUseCurrentWindow=1  " 在新窗口打开

""authorinfo作者信息
nmap <F4> :AuthorInfoDetect<CR>
let g:vimrc_author='alanerzhao'
let g:vimrc_email='alanerzhao@gamil.com'
let g:vimrc_homepage='http://www.rankber.com'

""TagsbarToggle
nmap <F4> :TagbarToggle<CR>
    let g:tagbar_ctags_bin = 'ctags'
    let g:tagbar_width = 30

""Project
nmap <F8> :Project<CR>
""定义 <Leader> 为逗号
let mapleader = ","
let maplocalleader = ","

""关闭自动检测编码改为手动
let g:fencview_autodetect=0
map <F2> :FencView<CR>

" winManager插件的设置
let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <leader> wm :WMToggle<CR>

""ctags
nmap <F9> <Esc>:!ctags -R *<CR>

""taglist配置
""TlistUpdate更新taglisat
map <F6> :silent! Tlist<CR>
let Tlist_Ctags_Cmd='ctags' "因为我们放在环境变量里，所以可以直接执行
let Tlist_Use_Right_Window=1 "让窗口显示在右边，0的话就是显示在左边
let Tlist_Show_One_File=0 "让taglist可以同时展示多个文件的函数列表，如果想只有1个，设置为1
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动推出vim
let Tlist_Process_File_Always=0 "是否一直处理tags.1:处理;0:不处理。不是一直实时更新tags，因为没有必要
let Tlist_Inc_Winwidth=0

" DoxygenToolkit.vim
map <leader>d :Dox<cr>
let g:DoxygenToolkit_authorName="alanerzhao"
let g:DoxygenToolkit_licenseTag="My own license\<enter>"
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
let g:DoxygenToolkit_briefTag_pre = "@brief\t"
let g:DoxygenToolkit_paramTag_pre = "@param\t"
let g:DoxygenToolkit_returnTag = "@return\t"
let g:DoxygenToolkit_briefTag_funcName = "no"
let g:DoxygenToolkit_maxFunctionProtoLines = 30

"" ZenCoding
let g:user_zen_expandabbr_key = '<c-j>'
"let g:use_zen_complete_tag = 1

" 指定 jsLint 调用路径，通常不用更改
let g:jslint_command = 'jsl'
" 指定 jsLint 的启动参数，可以指定相应的配置文件
let g:jslint_command_options = '-nofilelisting -nocontext -nosummary -nologo -process'
" 插件的主要调用方式
""autocmd BufWritePost,FileWritePost *.js call JsonLint()
map <C-q><C-p> :call JsonLint()<cr>
if has('win32')
    let g:checksyntax_cmd_javascript  = 'jsl -conf '.shellescape($VIM . '\vim\jsl\jsl.conf')
endif
let g:checksyntax_cmd_javascript .= ' -nofilelisting -nocontext -nosummary -nologo -process'

"" 新建 XHTML 、PHP、Javascript 文件的快捷键
nmap ht :NewTemplateTab html<cr>
nmap xh :NewTemplateTab xhtml<cr>
nmap ph :NewTemplateTab php<cr>
nmap ja :NewTemplateTab javascript<cr>
nmap cs :NewTemplateTab css<cr>
nmap h5 :NewTemplateTab html5<cr>

" =============
" Key Shortcut
" =============
nmap <C-t>   :tabnew<cr>
nmap <C-p>   :tabprevious<cr>
nmap <C-n>   :tabnext<cr>
nmap <C-l>   :tabclose<cr>
nmap <C-Tab> :tabnext<cr> 

" vimwiki基本配置
let g:vimwiki_use_mouse = 1
let g:vimwiki_list = [{'path': 'E:/vimwiki/',
\ 'path_html': 'E:/vimwiki/html/',
\ 'html_header': 'E:/vimwiki/template/header.tpl',}]

""生成html 快捷键
map <leader>ml <Plug>Vimwiki2HTML
""把所有wiki生成html
map <leader>aml <Plug>VimwikiAll2HTML

" 给 Win32 下的 gVim 窗口设置透明度
au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 250)

""CSS3语法支持
au BufRead,BufNewFile *.css set ft=css syntax=css3

" 将指定文件的换行符转换成 UNIX 格式
au FileType php,javascript,html,css,python,vim,vimwiki set ff=unix

""javascript and jquery code
au FileType html,javascript let g:javascript_enable_domhtmlcss = 1

" jquery.vim
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

"" JavaScript 
au FileType javascript map <f12> :call g:Jsbeautify()<cr>
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

""jelera折行
au FileType javascript call JavaScriptFold()

" 打开javascript折叠
let b:javascript_fold=1
" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1

" TxtBrowser 高亮TXT文本文件
let tlist_txt_settings = 'txt;c:content;f:figures;t:tables'
au BufRead,BufNewFile *.txt setlocal ft=txt
""json
au! BufRead,BufNewFile *.json set filetype=json
""less
call pathogen#infect()
nnoremap ,q :w <BAR> !lessc % > %:t:r.css<CR><space>

"一些不错的映射转换语法（如果在一个文件中混合了不同语言时有用）
nnoremap <leader>1 :set filetype=xhtml<cr>
nnoremap <leader>2 :set filetype=css<cr>
nnoremap <leader>3 :set filetype=javascript<cr>
nnoremap <leader>4 :set filetepe=php<cr>

" 删除所有行未尾空格
nnoremap <F7> :%s/[ \t\r]\+$//g<cr>

"" 自动补全括号，包括大括号
:inoremap ( ()<ESC>i
"":inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
":inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(']')<CR>
"":inoremap < <><ESC>i
"":inoremap > <c-r>=ClosePair('>')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i

""窗口设置
""隐藏掉菜单和工具条。
""map绑定
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 
    au GUIEnter * simalt ~x  " 窗口启动时自动最大化
    if has('gui_running')
      set guioptions=mr       "c去掉"
    ""set guioptions=         ""隐藏全部
    ""set guioptions-=m       " 隐藏菜单栏
      set guioptions-=T       " 隐藏工具栏
      set guioptions-=L       " 隐藏左侧滚动条
    ""set guioptions-=r       " 隐藏右侧滚动条
    ""set guioptions-=b       " 隐藏底部滚动条
    ""set showtabline-=0      " 隐藏Tab栏
    endif

" =============
" Color Scheme则配置不支持css.vim颜色
" =============
if has('syntax')
    colorscheme yytextmate 
    ""inkpot
    "" 默认编辑器配色
    ""au BufNewFile,BufRead,BufEnter,WinEnter * colo zenburn
    ""各不同类型的文件配色不同
     ""au BufNewFile,BufRead,BufEnter,WinEnter *.wiki colo inkpot
    ""CSS配色
    ""au BufNewFile,BufRead,BufEnter,WinEnter *.css colo desert
endif

" 给各语言文件添加 Dict
""if has('win32')"{{{
 ""   au FileType css call AddCSSFuncList()
   "" au FileType javascript call AddJSFuncList()
  ""  au FileType php call AddPHPFuncList()
""endif
    ""function AddCSSFuncList()
     ""   set dictionary-=$VIM/vimfiles/dict/css.dict dictionary+=$VIM/vimfiles/dict/css.dict
      ""   set complete-=k complete+=k
  ""endfunction
   "" function AddJSFuncList()
    ""     set dictionary-=$VIM/vimfiles/dict/javascript.dict dictionary+=$VIM/vimfiles/dict/javascript.dict
     ""    set complete-=k complete+=k
    ""endfunction
   "" function AddPHPFuncList()
     ""   set dictionary-=$VIM/vimfiles/dict/php_funclist.dict dictionary+=$VIM/vimfiles/dict/php_funclist.dict
      ""  set complete-=k complete+=k
  ""endfunction"}}}

"" Diff 模式的时候鼠标同步滚动 for Vim7.3
if has('cursorbind')
    set cursorbind
end

" 自动改变当前目录
if has('netbeans_intg')
    set autochdir
endif



