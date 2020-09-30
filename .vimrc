"
"                         ███████████████████████████
"                         ███████▀▀▀░░░░░░░▀▀▀███████
"                         ████▀░░░░░░░░░░░░░░░░░▀████
"                         ███│░░░░░░░░░░░░░░░░░░░│███
"                         ██▌│░░░░░░░░░░░░░░░░░░░│▐██
"                         ██░└┐░░░░░░░░░░░░░░░░░┌┘░██
"                         ██░░└┐░░░░░░░░░░░░░░░┌┘░░██
"                         ██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██
"                         ██▌░│██████▌░░░▐██████│░▐██
"                         ███░│▐███▀▀░░▄░░▀▀███▌│░███
"                         ██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██
"                         ██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██
"                         ████▄─┘██▌░░░░░░░▐██└─▄████
"                         █████░░▐█─┬┬┬┬┬┬┬─█▌░░█████
"                         ████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████
"                         █████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████
"                         ███████▄░░░░░░░░░░░▄███████
"                         ██████████▄▄▄▄▄▄▄██████████
"                         ███████████████████████████
"
"                ╔══════════════════════════════════════════╗
"                ║           ⎋  HERE BE SYNDI   ⎋           ║
"                ╚══════════════════════════════════════════╝


" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
"                           vim-plug
" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'itchyny/vim-cursorword'
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()

" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
"                            通用设置
" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
set nocompatible            " 设置不兼容原始vi模式
filetype on                 " 设置开启文件类型侦测
filetype plugin on          " 设置加载对应文件类型的插件
set cmdheight=1             " 设置命令行的高度
set showcmd                 " select模式下显示选中的行数
set ruler                   " 总是显示光标位置
set laststatus=2            " 总是显示状态栏
set number                  " 开启行号显示
set relativenumber          " 开启相对行号显示
set cursorline              " 高亮显示当前行
set whichwrap+=<,>,h,l      " 设置光标键跨行
set ttimeoutlen=0           " 设置<ESC>键响应时间
set pumheight=10            " 设置补全菜单高度为10
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set backspace=indent,eol,start  "解决退格失效的bug  
set noshowmode              " 关闭vim原生的模式显示
set scrolloff=5             " 当光标距离底/顶部5行时开始滚动

" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
"                           主题设置
" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
set t_Co=256                                                                                                       
syntax enable
colorscheme seoul256

" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
"                           按键映射
" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
noremap <F9> :NERDTreeToggle<CR>
noremap <F10> <ESC>:tabprev<CR>
noremap <F11> <ESC>:tabnext<CR>
noremap <C-M> <ESC>:set number<CR>:set relativenumber<CR>
noremap <C-N> <ESC>:set nonumber<CR>:set norelativenumber<CR>

noremap gti <ESC>:YcmCompleter GoToInclude<CR>
noremap gtd <ESC>:YcmCompleter GoToDefinition<CR>
noremap dia <ESC>:YcmShowDetailedDiagnostic<CR>

" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
"                           代码缩进与排版
" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等
set sidescroll=10        " 设置向右滚动字符数

" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
"                           搜索设置
" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
"                           编码设置
" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
"                           lightline
" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator':    { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'active': { 'left': [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ], },
      \ }
let g:lightline.tabline = {
      \ 'left': [ [ 'tabs'  ] ],
      \ 'right': [ [   ]  ] 
      \}

" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
"                           NERDTree
" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
" 设置在NERDTree中打开一个文件时用新tab打开
let NERDTreeMapOpenInTab='<ENTER>'

" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
"                           echodoc
" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
let g:echodoc#enable_at_startup = 1

" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
"                   YouCompleteMe设置
" -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
set completeopt-=preview " 补全时不显示窗口，只显示补全列表"
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0 
let g:ycm_error_symbol = '✗' 
let g:ycm_warning_symbol = '✗' 
let g:ycm_seed_identifiers_with_syntax = 1 
let g:ycm_complete_in_comments = 1 
let g:ycm_complete_in_strings = 1 
let g:ycm_disable_signature_help = 1
let g:ycm_clangd_uses_ycmd_caching = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.','re![_a-zA-z0-9]'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'cpp,objcpp' : ['->', '.', '::','re![_a-zA-Z0-9]'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'lua' : ['.', ':'],
  \ }
