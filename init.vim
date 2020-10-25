"
"   ____ _                _
"  / ___| |__   __ _ _ __| | ___  ___
" | |   | '_ \ / _` | '__| |/ _ \/ __|
" | |___| | | | (_| | |  | |  __/\__ \
"  \____|_| |_|\__,_|_|  |_|\___||___/
"

" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ===
" === Create a _machine_specific.vim file to adjust machine specific stuff, like python interpreter location
" ===
let has_machine_specific_file = 1
if empty(glob('~/.config/nvim/_machine_specific.vim'))
	let has_machine_specific_file = 0
	silent! exec "!cp ~/.config/nvim/default_configs/_machine_specific_default.vim ~/.config/nvim/_machine_specific.vim"
endif
source ~/.config/nvim/_machine_specific.vim


" ===
" === Editor Settings
" ===
if !empty(glob('~/.config/nvim/editor_setting.vim'))
	source ~/.config/nvim/editor_setting.vim
endif

" ===
" === Basic Mappings
" ===
if !empty(glob('~/.config/nvim/basic_mapping.vim'))
	source ~/.config/nvim/basic_mapping.vim
endif


" ===
" === Plugin Install Config
" ===
if !empty(glob('~/.config/nvim/plugin.vim'))
	source ~/.config/nvim/plugin.vim
endif

" ===
" === Other useful stuff
" ===
" Open a new instance of st with the cwd
" nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>

" Press space twice to jump to the next '<++>' and edit it
" noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l
noremap <localleader><localleader> <Esc>/<++><CR>:nohlsearch<CR>c4l

" Spelling Check with <space>sc
" noremap <LEADER>sc :set spell!<CR>


" Auto change directory to current dir
"  autocmd BufEnter * silent! lcd %:p:h

" Call figlet
noremap <localleader>tx :r !figlet

" find and replace
noremap \s :%s//g<left><left>

" set wrap
" noremap <LEADER>sw :set wrap<CR>


set re=0

if !empty(glob('~/.config/nvim/pluginConfig/which_key.vim'))
	source ~/.config/nvim/pluginConfig/which_key.vim
endif

if !empty(glob('~/.config/nvim/pluginConfig/lightline.vim'))
	source ~/.config/nvim/pluginConfig/lightline.vim
endif

if !empty(glob('~/.config/nvim/pluginConfig/coc.vim'))
	source ~/.config/nvim/pluginConfig/coc.vim
endif

if !empty(glob('~/.config/nvim/pluginConfig/vim_illuminate.vim'))
	source ~/.config/nvim/pluginConfig/vim_illuminate.vim
endif

if !empty(glob('~/.config/nvim/pluginConfig/rainbow.vim'))
	source ~/.config/nvim/pluginConfig/rainbow.vim
endif

"  if !empty(glob('~/.config/nvim/pluginConfig/fzf.vim'))
"		source ~/.config/nvim/pluginConfig/fzf.vim
"  endif

if !empty(glob('~/.config/nvim/pluginConfig/leaderf.vim'))
	source ~/.config/nvim/pluginConfig/leaderf.vim
endif

if !empty(glob('~/.config/nvim/pluginConfig/undotree.vim'))
	source ~/.config/nvim/pluginConfig/undotree.vim
endif

if !empty(glob('~/.config/nvim/pluginConfig/vim_visual_multi.vim'))
	source ~/.config/nvim/pluginConfig/vim_visual_multi.vim
endif

if !empty(glob('~/.config/nvim/pluginConfig/far.vim'))
	source ~/.config/nvim/pluginConfig/far.vim
endif

if !empty(glob('~/.config/nvim/pluginConfig/vista.vim'))
	source ~/.config/nvim/pluginConfig/vista.vim
endif

if !empty(glob('~/.config/nvim/pluginConfig/omnisharp.vim'))
	source ~/.config/nvim/pluginConfig/omnisharp.vim
endif

if !empty(glob('~/.config/nvim/pluginConfig/rnvimr.vim'))
	source ~/.config/nvim/pluginConfig/rnvimr.vim
endif

if !empty(glob('~/.config/nvim/pluginConfig/format.vim'))
	source ~/.config/nvim/pluginConfig/format.vim
endif

if !empty(glob('~/.config/nvim/pluginConfig/asyncrun_task.vim'))
	source ~/.config/nvim/pluginConfig/asyncrun_task.vim
endif

if !empty(glob('~/.config/nvim/pluginConfig/rooter.vim'))
	source ~/.config/nvim/pluginConfig/rooter.vim
endif

if !empty(glob('~/.config/nvim/pluginConfig/indentline.vim'))
	source ~/.config/nvim/pluginConfig/indentline.vim
endif

if(g:isWindows)
	if !empty(glob('~/.config/nvim/pluginConfig/ale.vim'))
		source ~/.config/nvim/pluginConfig/ale.vim
	endif
endif


for rcfile in split(globpath("$HOME/.config/nvim/language", "*.vim"), '\n')
	execute('source '.rcfile)
endfor


syntax on
colorscheme onedark























