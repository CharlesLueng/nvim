" ===
" === typescript-vim
" ===
let g:typescript_ignore_browserwords = 1


let g:which_key_language['typescript'] = {
	\ 'r': [':CocCommand tsserver.reloadProjects', 'reload-projects'],
	\ 'R': [':CocCommand tsserver.restart', 'restart-server'],
	\ 'w': [':CocCommand tsserver.watchBuild', 'watch-build'],
	\ 'x': [':CocCommand tsserver.executeAutofix', 'auto-fix'],
	\ 'l': [':CocCommand tsserver.openTsServerLog', 'open-log'],
	\ 'o': [':CocCommand tsserver.organizeImports', 'organize-imports'],
	\ 'c': [':CocCommand tsserver.goToProjectConfig', 'open-project-config']
	\}
