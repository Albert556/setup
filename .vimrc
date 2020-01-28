"设置vi一致性
set nocompatible
"设置backspace
set backspace=indent,eol,start
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
"关键字高亮
syntax on
"启用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key
"设置剪切板
set clipboard=unnamed
"显示输入命令
set showcmd
"显示括号匹配
set showmatch
" 高亮搜索结果
set hlsearch      
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
set foldenable                 " 允许折叠 
set foldmethod=manual          " 手动折叠

"状态栏
set statusline=%1*\%<%.50F\             "显示文件名和文件路径 (%<应该可以去掉)
set statusline+=%=%2*\%y%m%r%h%w\ %*        "显示文件类型及文件状态
set statusline+=%3*\%{&ff}\[%{&fenc}]\ %*   "显示文件编码类型
set statusline+=%4*\ row:%l/%L,col:%c\ %*   "显示光标所在行和列
set statusline+=%5*\%3p%%\%*            "显示光标前文本所占总文本的比例
