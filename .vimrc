" ====================================================
"   Copyright (C) 2021  All rights reserved.
"
"   Author        : wander
"   Email         : wander@ffactory.org
"   File Name     : .vimrc
"   Last Modified : 2021-10-20 22:30
"   Describe      : 
"
" ====================================================
"                          _                   _           
"                         | |                 (_)          
" __      ____ _ _ __   __| | ___ _ __  __   ___ _ __ ___  
" \ \ /\ / / _` | '_ \ / _` |/ _ \ '__| \ \ / / | '_ ` _ \ 
"  \ V  V / (_| | | | | (_| |  __/ |     \ V /| | | | | | |
"   \_/\_/ \__,_|_| |_|\__,_|\___|_|      \_/ |_|_| |_| |_|
                                                         
                                                      
filetype plugin indent on
"启用终端透明
" hi Normal guibg=NONE ctermbg=NONE
" hi LineNr guibg=NONE ctermbg=NONE
" hi SignColumn guibg=NONE ctermbg=NONE
" hi EndOfBuffer guibg=NONE ctermbg=NONE

set autowrite
" set mouse=a
set mouse=h "mac下 set mouse=a不起作用，改成h
set encoding=utf-8     "编码
set fenc=utf-8         "编码
set showcmd "输入的命令显示出来
set showmatch "设置匹配模式, 相当于括号匹配
set guioptions-=T " 隐藏工具栏
set guioptions-=m " 隐藏菜单栏
set guioptions-=r
set guioptions-=l
set guioptions-=L
set guioptions-=b 

set number
set noswapfile
set hlsearch "搜索时，高亮显示匹配结果
set incsearch "输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set nobackup "不创建备份文件
set noswapfile "不创建交换文件
set nowritebackup " 表示编辑的时候不需要备份文件
set autochdir "自动切换工作目录
set noerrorbells "出错时，不要发出响声
set foldmethod =indent "基于缩进进行代码折叠
" set foldmethod =syntax "基于语法进行代码折叠, 与rustfmt一起开启保存文件会很慢先关了
set nofoldenable "启动vim默认关闭代码折叠
"-------分隔窗口将新窗口再右边或者下方打开，添加配置-----
set splitbelow
set splitright
set backspace=indent,eol,start "解决退格键无法删除字符"   
" 让配置变更立即生效
 " autocmd BufWritePost $MYVIMRC source $MYVIMRC

" Errors/BadSpellings Higlighing Colors
highlight clear SpellBad

" CUSOR SETUP
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=5\x7"
" let &t_EI = "\<Esc>]50;CursorShape=6\x7"

" TAB SETUPS
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set cursorline      " highlight current line
" set cursorcolumn    " 突出显示当前列
set nocompatible        " close compatible mode

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

" set guifont=Hack:h15
" set guifont=Hack:h18
" set guifont=Go_Mono:h15
set guifont=Go_Mono:h18
" set guifont=JetBarains_Mono:h18
" VIM-GO CONFIGS
" 设置快捷键
" 模式下
let mapleader="\<space>"
autocmd FileType go nmap gr :GoReferrers<CR>
autocmd FileType go nmap gd :GoDef<CR>
autocmd FileType go nmap gi :GoImplements<CR>
autocmd FileType go nmap rn :GoRename<CR>
autocmd FileType go nmap <Leader>t :GoTest<CR>
autocmd FileType go nmap <Leader>b :GoBuild<CR>
autocmd FileType go nmap <Leader>r :GoRun<CR>
" LocationList 浏览快捷键设置
autocmd FileType go nmap <C-m> :lprevious<CR>
autocmd FileType go nmap <C-n> :lnext<CR>
autocmd FileType go nmap ca :lclose<CR>

" VIM-Rust 模式配置
autocmd FileType rust nmap gr :YcmCompleter GoToReferences<CR>
autocmd FileType rust nmap gd :YcmCompleter GoToDefinition<CR>
autocmd FileType rust nmap gi :YcmCompleter GoToImplementation<CR>
autocmd FileType rust nmap rn :YcmCompleter RefactorRename <newName>
" LocationList 浏览快捷键设置
autocmd FileType rust nmap <C-m> :cprevious<CR>
autocmd FileType rust nmap <C-n> :cnext<CR>
autocmd FileType rust nmap ca :cclose<CR>
" cargo test 快捷键 空格 + t
autocmd FileType rust nmap <Leader>t :Ctest<CR>
" cargo build 快捷键 空格 + b
autocmd FileType rust nmap <Leader>b :Cbuild<CR>
" cargo run 快捷键 空格 + r
autocmd FileType rust nmap <Leader>r :Crun<CR>
" cargo clean 快捷键 空格 + c 
autocmd FileType rust nmap <Leader>c :Cclean<CR>
" cargo doc 快捷键 空格 + d 
autocmd FileType rust nmap <Leader>d :Cdoc<CR>
" cargo init 快捷键 空格 + i 
autocmd FileType rust nmap <Leader>i :Cinit<CR>
" cargo update 快捷键 空格 + u 
autocmd FileType rust nmap <Leader>i :Cupdate<CR>
" cargo publish 快捷键 空格 + p 
autocmd FileType rust nmap <Leader>p :Cpublish<CR>
" cargo search 快捷键 空格 + s 
autocmd FileType rust nmap <Leader>s :Csearch<CR>
" 其他支持的编程语言
autocmd FileType c,cpp,objc,objcpp,cuda,java,javascript,python,typescript nmap gr :YcmCompleter GoToReferences<CR>
autocmd FileType c,cpp,objc,objcpp,cuda,java,javascript,python,typescript nmap gd :YcmCompleter GoToDefinition<CR>
autocmd FileType cs,java,typescript,javascript nmap gi :YcmCompleter GoToImplementation<CR>
autocmd FileType c,cpp,objc,objcpp,cuda,java,javascript,python,typescript,cs nmap rn :YcmCompleter RefactorRename <newName>
autocmd FileType c,cpp,objc,objcpp,cuda,java,javascript,python,typescript,cs nmap <C-m> :cprevious<CR>
autocmd FileType c,cpp,objc,objcpp,cuda,java,javascript,python,typescript,cs nmap <C-n> :cnext<CR>
autocmd FileType c,cpp,objc,objcpp,cuda,java,javascript,python,typescript,cs nmap ca :cclose<CR>

nmap tg :TagbarToggle<CR>
nmap PM :PreviewMarkdown right<CR>

" Syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Enable auto formatting on saving
let g:go_fmt_autosave = 1

" Run `goimports` on your current file on every save
let g:go_fmt_command = "goimports"

" Status line types/signatures
let g:go_auto_type_info = 1 
" 静态语法检查
" let g:go_metalinter_autosave =1
" let g:go_metalinter_autosave_enabled = ['staticcheck']
" let g:go_metalinter_autosave_enabled = ['govet', 'revive',"errcheck", 'unused']
" let g:go_metalinter_command = 'gopls'
" let g:go_metalinter_command = 'golangci-lint'
let g:go_gopls_staticcheck ='gopls'
" Go Add Tags
let g:go_addtags_transform = 'camelcase'
noremap gat :GoAddTags<cr>

" NERDTREE CONFIGS
map <C-z> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:go_gopls_enable=1
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_rename_command = 'gopls'
let NERDTreeIgnore=['^[.][[dir]]', 'vendor$[[dir]]', '\.DS_Store$[[file]]'] "文件浏览器忽略目录和文件
let NERDTreeShowLineNumbers=1 "显示行号
let NERDTreeWinPos='left' "文件浏览器显示位置 left or right
" let g:go_list_type = "quickfix"
let NERDTreeShowHidden=1
let NERDSpaceDelims=1 " 让注释符与语句之间留一个空格
let NERDCompactSexyComs=1 " 多行注释时样子更好看
let g:NERDDefaultAlign = 'left'  "将行注释符左对齐

" airline 配置
set laststatus=2 " 始终显示状态栏
" let g:airline_theme='materialmonokai'
" let g:airline_theme='oceanicnext'
 " let g:airline_theme='oceanicnext'

" let g:airline_theme='bubblegum'
let g:airline_theme='one'
" let g:airline_theme='molokai'
" let g:airline_theme='base16'
" let g:airline_theme='laederon'
" let g:airline_theme='dark'
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#bufferline#overwrite_variables = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_stl_path_style = 'short' "显示短路径
let g:airline_section_c_only_filename = 1 "显示唯一文件名
let g:airline#extensions#tabline#formatter = 'default'
"powerline symbols
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
" let g:airline_left_sep = '▶'
" let g:airline_left_alt_sep = '❯'
" let g:airline_right_sep = '◀'
" let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '>'
" TarBar
let g:tagbar_position = 'rightbelow vertical'
" rust 配置 
" let g:ycm_rust_toolchain_root = '/Users/apple/.rustup/toolchains/stable-x86_64-apple-darwin'
" let g:ycm_rust_src_path = '/Users/apple/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src'
let g:rustfmt_autosave = 1 
let g:rust_clip_command = 'pbcopy'

" 文本输入启用语补全配置
let g:ycm_semantic_triggers =  {
                        \ 'c,cpp,objc,objcpp,cuda,java,javascript,python,typescript,cs': ['re!\w{2}'],
                        \ 'go,rust': ['re!\w{2}'],
                        \ }
			
" go tagbar配置
" 依赖 https://github.com/jstemmer/gotags 必须要安装
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

" rust TagBar配置
" 依赖 https://github.com/universal-ctags/ctags必须要安装
let g:rust_use_custom_ctags_defs = 1  " if using rust.vim
let g:tagbar_type_rust = {
  \ 'ctagsbin' : '/usr/local/bin/ctags',
  \ 'ctagstype' : 'rust',
  \ 'kinds' : [
      \ 'n:modules',
      \ 's:structures:1',
      \ 'i:interfaces',
      \ 'c:implementations',
      \ 'f:functions:1',
      \ 'g:enumerations:1',
      \ 't:type aliases:1:0',
      \ 'v:constants:1:0',
      \ 'M:macros:1',
      \ 'm:fields:1:0',
      \ 'e:enum variants:1:0',
      \ 'P:methods:1',
  \ ],
  \ 'sro': '::',
  \ 'kind2scope' : {
      \ 'n': 'module',
      \ 's': 'struct',
      \ 'i': 'interface',
      \ 'c': 'implementation',
      \ 'f': 'function',
      \ 'g': 'enum',
      \ 't': 'typedef',
      \ 'v': 'variable',
      \ 'M': 'macro',
      \ 'm': 'field',
      \ 'e': 'enumerator',
      \ 'P': 'method',
  \ },
\ }

" let g:tagbar_type_rust = {
    " \ 'kinds' : [
    "     \ 'T:types',
    "     \ 'f:functions',
    "     \ 'g:enumerations',
    "     \ 's:structures',
    "     \ 'm:modules',
    "     \ 'c:constants',
    "     \ 't:traits',
    "     \ 'i:trait implementations',
    " \ ],
" \ }
" let g:ycm_language_server = 
	" \ [ 
	" \   {
	" \     'name': 'rust',
	" \     'cmdline': [ 'rust_analyzer' ],
	" \     'filetypes': [ 'rust' ],
	" \     'project_root_files': [ 'Cargo.toml' ]
	" \   }
	" \ ]

" PLUGINS
call plug#begin()
let g:vim_isort_python_version = 'python3'
" 以下插件地址省略域名默认去github.com下载，如果不是github地址请写完成git仓库地址
Plug 'mhinz/vim-startify' "启动欢迎页
Plug 'nine2/vim-copyright' "自动增加作者信息
Plug 'mhartington/oceanic-next' "配色主题
Plug 'rakr/vim-one' "配色主题
Plug 'skielbasa/vim-material-monokai' "配色主题
Plug 'fatih/molokai' "配色主题
Plug 'lifepillar/vim-solarized8' "配色主题
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } "golang 插件
Plug 'rust-lang/rust.vim' "rust插件
Plug 'preservim/tagbar' "代码结构浏览
Plug 'ctrlpvim/ctrlp.vim' "文件查找插件
Plug 'preservim/nerdtree' "文件系统浏览器
Plug 'vim-airline/vim-airline' "状态栏插件
Plug 'vim-airline/vim-airline-themes' "状态栏主题包
Plug 'ycm-core/YouCompleteMe' "代码补全插件
Plug 'tpope/vim-fugitive' "git插件
Plug 'junegunn/gv.vim' "git提交记录浏览器
Plug 'idanarye/vim-merginal' "git分支管理
Plug 'jiangmiao/auto-pairs' "括号自动完成
Plug 'preservim/nerdcommenter' "注释插件
Plug 'skanehira/preview-markdown.vim' "终端显示markdown,先安装mbr
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() },'for': ['markdown', 'vim-plug']} "浏览器实时预览markdown
Plug 'darthmall/vim-vue' "vue.js高亮显示文件
Plug 'puremourning/vimspector' "代码图形Debugger
Plug 'mhinz/vim-grepper' "根据文件内容查找文件

" Use release branch (recommend)
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using yarn: https://yarnpkg.com
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
call plug#end()

let g:vimspector_enable_mappings = 'HUMAN' "vimspector

let g:vue_pre_processors = 'detect_on_enter'
" auto-pairs 括号自动补全设置,以下两项设置，关闭右大括号跳转，在空行插入}时没插入跳转到下一个已经存在的大括号}的问题
let g:AutoPairsMultilineClose = 0  
let g:AutoPairsFlyMode = 0 

syntax enable 
syntax on
set t_Co=256

" enable true color
if (has("termguicolors"))
    set termguicolors
endif
 
 set background=dark 
" set background=light
" set termguicolors
colorscheme  one 
" colorscheme  OceanicNext 
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1 "斜体注释会有影响
" colorscheme  solarized8 
" colorscheme molokai 
" let g:molokai_original = 1
" let g:rehash256 = 1
" colorscheme material-monokai 
" let g:materialmonokai_subtle_spell=1
" let g:materialmonokai_subtle_airline=1

" markdown preview
let g:preview_markdown_parser='mdr'
" let g:preview_markdown_parser='glow'
let g:preview_markdown_auto_update=1
" 自动关闭p:close
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
" 设置作者信息
let g:file_copyright_name = "wander"
let g:file_copyright_email = "wander@ffactory.org"
let g:file_copyright_auto_update = 1

function! s:CustomizeYcmLocationWindow()
  " Move the window to the top of the screen.
  silent! wincmd P 
  " Set the window height to 5.
  5wincmd _
  " Switch back to working window.
   " wincmd p
endfunction

autocmd User YcmLocationOpened call s:CustomizeYcmLocationWindow()

function! s:CustomizeYcmQuickFixWindow()
  " Move the window to the top of the screen.
  silent! wincmd P 
  " Set the window height to 5.
  5wincmd _

   " wincmd p
endfunction

autocmd User YcmQuickFixOpened call s:CustomizeYcmQuickFixWindow()

