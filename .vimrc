"设置行号
set nu
augroup relative_numbser
 autocmd!
 autocmd InsertEnter * :set norelativenumber
 autocmd InsertLeave * :set relativenumber
augroup END
"设置编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
"突出显示当前行
set cursorline
"启用鼠标
set mouse=r
set selection=exclusive
set selectmode=mouse,key
"设置剪切板
set clipboard=unnamed
"显示括号匹配
set showmatch
"设置缩进
"设置Tab长度为4空格
set tabstop=4
"设置自动缩进长度为4空格
set shiftwidth=4
"继承前一行的缩进方式，适用于多行注释
set autoindent
"设置粘贴模式
set paste
"显示空格和tab键
set listchars=tab:>-,trail:-
"显示状态栏和光标当前位置
"总是显示状态栏
set laststatus=2
"显示光标当前位置
set ruler
"打开文件类型检测
filetype plugin indent on
