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
" 启用256色
set t_Co=256
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
set showmode
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
" 自动将 Tab 转为空格
set expandtab
"显示空格和tab键
set listchars=tab:>-,trail:-
"设置粘贴模式
set paste
"显示状态栏和光标当前位置
"总是显示状态栏
set laststatus=2
"显示光标当前位置
set ruler
" 搜索
" 匹配括号
set showmatch
" 高亮搜索结果
set hlsearch
" 跟随输入匹配第一个结果
set incsearch
" 忽略大小写
set ignorecase
" 智能大小写
set smartcase
"打开文件类型检测
filetype plugin indent on
set foldenable                 " 允许折叠 
set foldmethod=manual          " 手动折叠

" 临时文件管理
" 如果文件夹不存在，则新建文件夹
if !isdirectory($HOME.'/.vim/files') && exists('*mkdir')
  call mkdir($HOME.'/.vim/files')
endif

" 备份文件
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
" 交换文件
set directory   =$HOME/.vim/files/swap//
set updatecount =100
" 撤销文件
set undofile
set undodir     =$HOME/.vim/files/undo/
" viminfo 文件
set viminfo     ='100,n$HOME/.vim/info/viminfo

" 自动切换工作目录
set autochdir
" 出错时，不要发出响声
set noerrorbells
" 发出视觉提示
set visualbell
" 打开文件监视
set autoread
" 命令模式自动补全
set wildmenu
set wildmode=longest:list,full

"状态栏
set statusline=%1*\%<%.50F\             "显示文件名和文件路径 (%<应该可以去掉)
set statusline+=%=%2*\%y%m%r%h%w\ %*        "显示文件类型及文件状态
set statusline+=%3*\%{&ff}\[%{&fenc}]\ %*   "显示文件编码类型
set statusline+=%4*\ row:%l/%L,col:%c\ %*   "显示光标所在行和列
set statusline+=%5*\%3p%%\%*            "显示光标前文本所占总文本的比例

" 按键映射
" 命令行上下键
cnoremap <c-n> <down>
cnoremap <c-p> <up>
" 快速移动当前行
nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>
" 快速添加空行
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>
