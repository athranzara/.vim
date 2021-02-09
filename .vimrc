"""""""""""""""""""""""""""
"   Vundle Configuration  "
"""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

"Plugin 'scrooloose/nerdtree'

"Plugin 'scrooloose/nerdcommenter'

"Plugin 'vim-latex/vim-latex'

"Plugin 'xuhdev/vim-latex-live-preview'

"Plugin 'jlanzarotta/bufexplorer'

"let g:livepreview_previewer = 'evince'

"Plugin 'vhda/verilog_systemverilog.vim'

"Plugin 'chrisbra/csv.vim'

"Plugin 'ervandew/supertab'

"Plugin 'vim-scripts/Conque-Shell'

"Plugin 'lervag/vimtex'

"Plugin 'Valloric/YouCompleteMe'




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""
" End of Vundle Configuration  "
"""""""""""""""""""""""""""

" Show title
set title

" This is allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" Set syntax on
syntax on

" Case insensitive search
set ic


" Wrap text instead of being on one line
set lbr

" Change colorscheme from default to delek
colorscheme delek


" map switch between tabs
map <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

" Spell check
hi clear SpellBad
hi SpellBad cterm=underline

" configure tab character to be space, and convert all tab to space
set tabstop=4
set shiftwidth=4
retab
set softtabstop=4
set expandtab

" Automatically wrap left and right
" pressing left/right cursor keys, vim will move to the previous/next line
" after reaching first/last character int the line.
set whichwrap+=<,>,h,l,[,]


" set smartcase, auto determine case sensitivity
set smartcase

"Gnome terminal do not send <alt> key,
"this fix such problem
"let c='a'
"while c <= 'z'
"  exec "set <A-".c.">=\e".c
"  exec "imap \e".c." <A-".c.">"
"  let c = nr2char(1+char2nr(c))
"endw
"set timeout ttimeoutlen=50

" vim-latex related configuration
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*
" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
"set sw=4
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
set winaltkeys=no

"let g:Tex_DefaultTargetFormat='pdf'
"let g:Tex_MultipleCompileFormats='pdf'

" type <F12> in normal mode to enable
" Vim-latex-live-preview
"nmap <F12> :LLPStartPreview<cr>


" enable in file vim command
set modeline

" configure j k to move inline
nnoremap <buffer> k gk
nnoremap <buffer> j gj

function! WC()
    let filename = expand("%")
    let cmd = "detex " . filename . " | wc -w | tr -d [:space:]"
    let result = system(cmd)
    echo result . " words"
endfunction

command WC call WC()

" Set encoding to UTF-8 by default
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.


" Let vim recognize empty .tex file is a tex file rather than plaintex
"let g:tex_flavor='latex'

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" vim 自身命令行模式智能补全
set wildmenu
" 设置查看历史条数
set history=200
" F2切换开启或者关闭行号
nnoremap <F2> :set number!<CR>
" F3切换开启列高亮显示
nnoremap <F3> :set cursorcolumn!<CR>
" F4格式化json字符串
"map <F4> :%!python -m json.tool<CR>
" 开启/关闭taglist
nmap <F8> :TagbarToggle<CR>
" 开启/关闭格式化粘贴
set pastetoggle=<F9>
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行
set cursorline
" 高亮显示搜索结果
set hlsearch
" 禁止折行
set nowrap
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=2
" 设置格式化时制表符占用空格数
set shiftwidth=2
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=2
" 自动缩进代码
set autoindent
" 开启智能对齐
set smartindent
" 缩进代码量
set shiftwidth=2
" 删除空格数
set backspace=2
"为不同的文件类型设置不同的空格数替换TAB
autocmd FileType java,javascript,html,css,xml set ts=2
autocmd FileType java,javascript,html,css,xml set shiftwidth=2
autocmd FileType java,javascript,html,css,xml set softtabstop=2

autocmd FileType python,shell,bash set ts=4
autocmd FileType python,shell,bash set shiftwidth=4
autocmd FileType python,shell,bash set softtabstop=4

" 对于markdown文件需要进行换行方便书写
autocmd FileType markdown set wrap
