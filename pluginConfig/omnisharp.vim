
" ===
" === OmniSharp
" ===
" Don't autoselect first omnicomplete option, show options even if there is only
" one (so the preview documentation is accessible). Remove 'preview', 'popup'
" and 'popuphidden' if you don't want to see any documentation whatsoever.
" Note that neovim does not support `popuphidden` or `popup` yet:
" https://github.com/neovim/neovim/issues/10996
if has('patch-8.1.1880')
	set completeopt=longest,menuone,popuphidden
	" Highlight the completion documentation popup background/foreground the same as
	" the completion menu itself, for better readability with highlighted
	" documentation.
	set completepopup=highlight:Pmenu,border:off
else
	set completeopt=longest,menuone,preview
	" Set desired preview window height for viewing documentation.
	set previewheight=5
endif

" Tell ALE to use OmniSharp for linting C# files, and no other linters.
" let g:ale_linters = { 'cs': ['OmniSharp'] }

" let g:OmniSharp_selector_ui = 'fzf'    " Use fzf.vim

augroup omnisharp_commands
	autocmd!

	" Show type information automatically when the cursor stops moving.
	" Note that the type is echoed to the Vim command line, and will overwrite
	" any other messages in this space including e.g. ALE linting messages.
	" autocmd CursorHold *.cs OmniSharpTypeLookup

	" The following commands are contextual, based on the cursor position.
	" autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
	" autocmd FileType cs nmap <silent> <buffer> fu <Plug>(omnisharp_find_usages)
	" autocmd FileType cs nmap <silent> <buffer> gi <Plug>(omnisharp_find_implementations)
	" autocmd FileType cs nmap <silent> <buffer> <LocalLeader>pd <Plug>(omnisharp_preview_definition)
	" autocmd FileType cs nmap <silent> <buffer> <LocalLeader>pi <Plug>(omnisharp_preview_implementations)
	" autocmd FileType cs nmap <silent> <buffer> <LocalLeader>ot <Plug>(omnisharp_type_lookup)
	" autocmd FileType cs nmap <silent> <buffer> <LocalLeader>od <Plug>(omnisharp_documentation)
	" autocmd FileType cs nmap <silent> <buffer> <LocalLeader>of <Plug>(omnisharp_find_symbol)
	" autocmd FileType cs nmap <silent> <buffer> <LocalLeader>qx <Plug>(omnisharp_fix_usings)
	" autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
	" autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
  "
	" " Navigate up and down by method/property/field
	" autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
	" autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
	" " Find all code errors/warnings for the current solution and populate the quickfix window
	" autocmd FileType cs nmap <silent> <buffer> <LocalLeader>cc <Plug>(omnisharp_global_code_check)
	" " Contextual code actions (uses fzf, CtrlP or unite.vim selector when available)
	" autocmd FileType cs nmap <silent> <buffer> <LocalLeader>ac <Plug>(omnisharp_code_actions)
	" autocmd FileType cs xmap <silent> <buffer> <LocalLeader>ac <Plug>(omnisharp_code_actions)
	" " Repeat the last code action performed (does not use a selector)
	" autocmd FileType cs nmap <silent> <buffer> <LocalLeader>o. <Plug>(omnisharp_code_action_repeat)
	" autocmd FileType cs xmap <silent> <buffer> <LocalLeader>o. <Plug>(omnisharp_code_action_repeat)
  "
	" autocmd FileType cs nmap <silent> <buffer> <LocalLeader>o= <Plug>(omnisharp_code_format)
  "
	" autocmd FileType cs nmap <silent> <buffer> <LocalLeader>rn <Plug>(omnisharp_rename)
  "
	" autocmd FileType cs nmap <silent> <buffer> <LocalLeader>osre <Plug>(omnisharp_restart_server)
	" autocmd FileType cs nmap <silent> <buffer> <LocalLeader>osst <Plug>(omnisharp_start_server)
	" autocmd FileType cs nmap <silent> <buffer> <LocalLeader>ossp <Plug>(omnisharp_stop_server)

	autocmd BufEnter *.cs call s:setMenu()
augroup END

function! s:setMenu()

	let g:which_key_space['l'] = {
				\ 'name': '+Language',
				\ 'd': ['<Plug>(omnisharp_documentation)', 'show-doc'],
				\ 'g': {
				\ 'name': '+Navigate',
				\ 'd': ['<Plug>(omnisharp_go_to_definition)', 'go-to-definition'],
				\ 'u': ['<Plug>(omnisharp_find_usages)', 'find-usages'],
				\ 'i': ['<Plug>(omnisharp_find_implementations)', 'find-implementations'],
				\ 's': ['<Plug>(omnisharp_find_symbol)', 'find-symbol'],
				\},
				\ 'p': {
				\ 'name': '+Preview',
				\ 'd': ['<Plug>(omnisharp_preview_definition)', 'preview-definition'],
				\ 'i': ['<Plug>(omnisharp_preview_implementations)', 'preview-implementations'],
				\},
				\ 's': {
				\ 'name': '+Server',
				\ 'r': ['<Plug>(omnisharp_restart_server)', 'restart-server'],
				\ 's': ['<Plug>(omnisharp_start_server)', 'start-server'],
				\ 'S': ['<Plug>(omnisharp_stop_server)', 'stop-server'],
				\},
				\ 'f': ['<Plug>(omnisharp_code_format)', 'format'],
				\ 'a': ['<Plug>(omnisharp_code_actions)', 'code-action'],
				\ 'r': ['<Plug>(omnisharp_rename)', 'rename'],
				\ 'x': ['<Plug>(omnisharp_fix_usings)', 'fix-usings'],
				\ 't': ['<Plug>(omnisharp_type_lookup)', 'type-lookup'],
				\}
endfunction

" Enable snippet completion, using the ultisnips plugin
" let g:OmniSharp_want_snippet=1
