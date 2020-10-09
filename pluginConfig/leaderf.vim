" ===
" === Leaderf
" ===
" let g:Lf_WindowPosition = 'popup'
let g:Lf_RootMarkers = ['.git', 'Makefile', '*.sln', 'build/env.sh', 'pacakge.json', 'init.vim']
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewCode = 1
let g:Lf_ShowHidden = 1
let g:Lf_ShowDevIcons = 1
let g:Lf_CommandMap = {
			\   '<C-k>': ['<C-k>'],
			\   '<C-j>': ['<C-j>'],
			\   '<C-]>': ['<C-]>'],
			\   '<C-p>': ['<C-p>'],
			\}
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_WildIgnore = {
			\ 'dir': ['.git', 'vendor', 'bin', 'obj', 'node_modules'],
			\ 'file': ['__vim_project_root']
			\}
let g:Lf_UseMemoryCache = 0
let g:Lf_UseCache = 0
