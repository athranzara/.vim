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

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/nerdcommenter'

Plugin 'vim-latex/vim-latex'

Plugin 'xuhdev/vim-latex-live-preview'

Plugin 'jlanzarotta/bufexplorer'

let g:livepreview_previewer = 'evince'

Plugin 'vhda/verilog_systemverilog.vim'

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

" Turn on line numbering. Turn it off with "set nonu" 
set number

" This is allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" Set syntax on
syntax on

" Case insensitive search
set ic

" Higlhight search
set hls

" Wrap text instead of being on one line
set lbr

" Change colorscheme from default to delek
colorscheme delek

" show current cursor
set ruler

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

" Configure the toggle mode for terminal paste
" press F10 to switch to terminal paste mode without indentation
" press again to switch back to indentation mode
set pastetoggle=<F10>

" Automatically wrap left and right
" pressing left/right cursor keys, vim will move to the previous/next line
" after reaching first/last character int the line.
set whichwrap+=<,>,h,l,[,]


" set smartcase, auto determine case sensitivity
set smartcase

"Gnome terminal do not send <alt> key,
"this fix such problem
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50

" vim-latex related configuration
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*
" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=4
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
set winaltkeys=no

let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf'

" type <F11> in normal mode to enable
" Vim-latex-live-preview
nmap <F12> :LLPStartPreview<cr>


" enable in file vim command
set modeline


