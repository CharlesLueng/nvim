" ====================
" === Editor Setup ===
" ====================
" ===
" === System
" ===
"set clipboard=unnamedplus
let &t_ut=''
set autochdir

" ===
" === EnCode
" ===
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" ===
" === Editor behavior
" ===
set number
set relativenumber
set cursorline
set hidden
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
setlocal nobackup
setlocal nowritebackup
" set list
" set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast "should make scrolling faster
set lazyredraw "same as above
set visualbell
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
filetype plugin on
"silent !mkdir -p ~/.config/nvim/tmp/sessions
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif
set colorcolumn=100
set updatetime=100
set virtualedit=block

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif



if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif
" set -g default-terminal "tmux-256color"
" set -ga terminal-overrides ",*256col*:Tc"
syntax on
set t_Co=256
set cursorline
" colorscheme onehalfdark

filetype plugin indent on
set runtimepath+=~/.config/nvim/indent
" set runtimepath+=~/.config/nvim/ftplugin

" autocmd filetype cs echo '123'
" Detect root directory of SpaceVim
" if has('win16') || has('win32') || has('win64')
"   function! s:resolve(path) abort
"     let cmd = 'dir /a "' . a:path . '" | findstr SYMLINK'
"     " 2018/12/07 周五  下午 10:23    <SYMLINK>      vimfiles [C:\Users\Administrator\.SpaceVim]
"     " ref: https://superuser.com/questions/524669/checking-where-a-symbolic-link-points-at-in-windows-7
"     silent let rst = system(cmd)
"     if !v:shell_error
"       let dir = split(rst)[-1][1:-2]
"       return dir
"     endif
"     return a:path
"   endfunction
" else
"   function! s:resolve(path) abort
"     return resolve(a:path)
"   endfunction
" endif
"
" let g:_spacevim_root_dir = fnamemodify(s:resolve(fnamemodify(expand('<sfile>'),
"       \ ':p:h:h:gs?\\?'.((has('win16') || has('win32')
"       \ || has('win64'))?'\':'/') . '?')), ':p:gs?[\\/]?/?')
" lockvar g:_spacevim_root_dir
" if has('nvim')
"   let s:qtdir = split(&rtp, ',')[-1]
"   if s:qtdir =~# 'nvim-qt'
"     let &rtp = s:qtdir . ',' . g:_spacevim_root_dir . ',' . $VIMRUNTIME
"   else
"     let &rtp = g:_spacevim_root_dir . ',' . $VIMRUNTIME
"   endif
" else
"   let &rtp = g:_spacevim_root_dir . ',' . $VIMRUNTIME
" endif

let g:isWindows = 0
let g:islinux = 0
if(has('win32')||has('win64')||has('win95')||has('win16'))
	let g:isWindows = 1
endif
syntax enable

