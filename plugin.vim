
" ===
" === Install Plugins with Vim-Plug
" ===
call plug#begin('~/.config/plugged')

" Pretty Dress
" Plug 'bling/vim-bufferline'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'josa42/vim-lightline-coc'
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
if(g:isWindows == 0)
	Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
endif
if(g:isWindows == 1)
	Plug 'dense-analysis/ale'
endif
Plug 'RRethy/vim-illuminate'
Plug 'Yggdroot/indentLine'
Plug 'qpkorr/vim-bufkill'
Plug 'szw/vim-maximizer'

" File navigation
" Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

if(g:isWindows == 0)
	Plug 'kevinhwang91/rnvimr'
endif
Plug 'airblade/vim-rooter'
Plug 'pechorin/any-jump.vim'
Plug 'liuchengxu/vista.vim'

" Undo Tree
Plug 'mbbill/undotree'

" Bookmark
Plug 'MattesGroeger/vim-bookmarks'

" Theme
Plug 'yuttie/hydrangea-vim'
Plug 'sonph/onehalf', {'rtp': 'vim'}
Plug 'joshdick/onedark.vim'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" CustomTask
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/vim-terminal-help'

" Editor Enhancement
Plug 'easymotion/vim-easymotion'
Plug 'mg979/vim-visual-multi'
Plug 'tomtom/tcomment_vim' " in <space>cn to comment a line
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'

" Find & Replace
Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }

Plug 'liuchengxu/vim-which-key'

" Autoformat
Plug 'Chiel92/vim-autoformat'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Language

" CSharp
Plug 'OmniSharp/omnisharp-vim'
" HTML, CSS, JavaScript, Typescript, PHP, JSON, etc.
Plug 'elzr/vim-json', { 'for': ['json'] }
Plug 'neoclide/jsonc.vim', { 'for': ['json'] }
Plug 'othree/html5.vim', { 'for': ['html', 'vue', 'cshtml'] }
Plug 'alvan/vim-closetag', { 'for': ['html', 'vue', 'cshtml'] }
" Plug 'hail2u/vim-css3-syntax' " , { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
" Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
" Plug 'pangloss/vim-javascript', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less', 'cshtml'] }
Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
" Plug 'jelera/vim-javascript-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"Plug 'jaxbot/browserlink.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'posva/vim-vue', { 'for': ['vue'] }

" Go
Plug 'fatih/vim-go' , { 'for': ['go', 'vim-plug'], 'tag': '*' }

" Python
" Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
"Plug 'vim-scripts/indentpython.vim', { 'for' :['python', 'vim-plug'] }
"Plug 'plytophogy/vim-virtualenv', { 'for' :['python', 'vim-plug'] }
Plug 'tweekmonster/braceless.vim', { 'for' :['python', 'vim-plug'] }


" Flutter
Plug 'dart-lang/dart-vim-plugin', { 'for': ['dart'] }
Plug 'f-person/pubspec-assist-nvim', { 'for' : ['pubspec.yaml'] }

" Check
" Plug 'dense-analysis/ale'

" Swift
" Plug 'keith/swift.vim'
" Plug 'arzg/vim-swift'

" Markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim', { 'for': ['markdown'] }

" Debugger
Plug 'puremourning/vimspector'

" plantuml
Plug 'huos3203/plantuml-syntax', { 'for': ['plantuml'] }  "plantuml语法高亮 Plug 'aklt/plantuml-syntax'
Plug 'tyru/open-browser.vim'
Plug 'weirongxu/plantuml-previewer.vim', { 'for': ['plantuml'] } "在线工具：http://sujoyu.github.io/plantuml-previewer/

call plug#end()
