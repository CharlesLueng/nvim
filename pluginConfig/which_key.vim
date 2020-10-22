" ===
" === vim-which-key
" ===
" let g:which_key_floating_opts = {'row': 5, 'col': 5}

" autocmd FileType which_key highlight WhichKeySeperator guibg=red ctermbg=red
" autocmd FileType which_key highlight WhichKeyFloating ctermbg=s:bg.gui ctermfg=s:bg.gui
highlight WhichKeyFloating ctermbg=232

let g:which_key_use_floating_win=0

let g:which_key_floating_opts = { 'row': '+1', 'width': '+1' }
let g:which_key_hspace = 25

set timeoutlen=2000
"
call which_key#register('<Space>', "g:which_key_space")
" call which_key#register(',', "g:which_key_leader")
call which_key#register('\\', "g:which_key_localleader")
"
" nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
"
" let g:mapleader = "\<Space>"
" let g:maplocalleader = ','
" nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
" nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
"
" nnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
nnoremap <silent> <space> :<c-u>WhichKey '<space>'<CR>
let g:which_key_space = {
			\ '1': ['<Plug>lightline#bufferline#go(1)', 'Buffer-1'],
			\ '2': ['<Plug>lightline#bufferline#go(2)', 'Buffer-2'],
			\ '3': ['<Plug>lightline#bufferline#go(3)', 'Buffer-3'],
			\ '4': ['<Plug>lightline#bufferline#go(4)', 'Buffer-4'],
			\ '5': ['<Plug>lightline#bufferline#go(5)', 'Buffer-5'],
			\ '6': ['<Plug>lightline#bufferline#go(6)', 'Buffer-6'],
			\ '7': ['<Plug>lightline#bufferline#go(7)', 'Buffer-7'],
			\ '8': ['<Plug>lightline#bufferline#go(8)', 'Buffer-8'],
			\ '9': ['<Plug>lightline#bufferline#go(9)', 'Buffer-9'],
			\ '0': ['<Plug>lightline#bufferline#go(0)', 'Buffer-0'],
			\}
"
let g:which_key_space['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : [':resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : [':resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ 'c' : ['<Plug>(coc-rename)'    , 'coc-rename'],
      \ }

" +Coc
let g:which_key_space['c'] = {
		\ 'name' : '+Coc',
		\ 'c': [':CocCommand', 'command-list'],
		\ 'e': [':CocList extensions', 'extentions-list'],
		\ 'T': {
				\ 'name': '+Todo',
				\ 'n': [':CocCommand todolist.create', 'create-todo'],
				\ 'l': [':CocList todolist', 'todo-list'],
				\ 'd': [':CocCommand todolist.download', 'todo-download'],
				\ 'u': [':CocCommand todolist.upload', 'todo-upload'],
				\},
		\ 't': {
				\ 'name': '+Task',
				\ 'l': [':CocList tasks', 'task-list'],
				\},
				\ 'y': [':<C-u>CocList -A --normal yank', 'yank-list'],
				\ 'd': [':call g:Show_documentation()', 'show-doc'],
				\ 'r': ['<Plug>(coc-rename)', 'rename'],
				\ 'a': ['<Plug>(coc-codeaction)', 'codeaction'],
				\ 'x': ['<Plug>(coc-fix-current)', 'quickfix']
		\}

" +Tab
let g:which_key_space['t'] = {
			\ 'name': '+Tab',
			\ 'u': [':tabe', 'create-tab'],
			\ 'h': [':-tabnext', 'prev'],
			\ 'l': [':+tabnext', 'next'],
			\ 'H': [':-tabmove', 'move-prev'],
			\ 'L': [':+tabmove', 'move-next'],
			\ 'n': [':tabn', 'tab-next'],
			\ 'p': [':tabp', 'tab-prev'],
			\ '1': ['1gt', 'tab-1'],
			\ '2': ['2gt', 'tab-2'],
			\ '3': ['3gt', 'tab-3'],
			\ '4': ['4gt', 'tab-4'],
  		\ '5': ['5gt', 'tab-5'],
			\ '6': ['6gt', 'tab-6'],
			\ '7': ['7gt', 'tab-7'],
			\ '8': ['8gt', 'tab-8'],
			\ '9': ['9gt', 'tab-9'],
			\ '0': ['0gt', 'tab-0'],
			\ 'e': [':CocCommand explorer', 'file-explorer']
			\}

" +Diagnostics
if(g:isWindows == 0)
let g:which_key_space['d'] = {
			\ 'name': '+Diagnostics',
			\ 'l': [':CocList diagnostics', 'diagnostics-list'],
			\ 'k': ['<Plug>(coc-diagnostic-prev)', 'prev-diagnostics'],
			\ 'j': ['<Plug>(coc-diagnostic-next)', 'next-diagnostics'],
			\}
else
let g:which_key_space['d'] = {
			\ 'name': '+Diagnostics',
			\ 'l': [':ALEDetail', 'diagnostics-list'],
			\ 'k': ['<Plug>(ale_previous_wrap)', 'prev-diagnostics'],
			\ 'j': ['<Plug>(ale_next_wrap)', 'next-diagnostics'],
			\ 's': [':ALEToggle', 'toggle-diagnostics']
			\}
endif

" +Bookmark
let g:which_key_space['m']= {
			\ 'name': '+Bookmark',
			\ 'm': ['<Plug>(coc-bookmark-toggle)', 'toggle'],
			\ 'a': ['<Plug>(coc-bookmark-annotate)', 'annotate'],
			\ 'j': ['<Plug>(coc-bookmark-next)', 'next'],
			\ 'k': ['<Plug>(coc-bookmark-prev)', 'prev'],
			\ 'l': [':CocList bookmark', 'list'],
			\}

let g:which_key_space['b']= {
			\ 'name': '+Buffer',
			\ 'd': [':bd', 'buffer-delete'],
			\ 'c': [':call Clear_buffers()', 'closs-all-buffer'],
			\ 'f': [':Leaderf buffer', 'find-buffer'],
			\}

let g:which_key_space['j']= {
			\ 'name': '+Jump',
			\ 'j': [':AnyJump', 'any-jump'],
			\ 'k': [':AnyJumpBack', 'any-jump-back'],
			\ 'l': [':AnyJumpLastResults', 'any-jump-last-results']
			\}

let g:which_key_space['f']= {
			\ 'name': '+Finder',
			\ 'f': [':Leaderf rg', 'find-rg'],
			\ 'h': [':Leaderf mru', 'find-history'],
			\ 'l': [':Leaderf line', 'find-line'],
			\ ':': [':Leaderf cmdHistory', 'find-cmdHistory'],
			\ 't': [':LeaderfBufTag', 'find-function'],
			\ 'p': [':call FindFileOnCurrentFolder()', 'find-file'],
			\ 'b': [':Leaderf buffer', 'find-buffer'],
			\ 'v': [':Vista coc', 'tag-viewer']
			\}

let g:which_key_space['p'] = {
			\ 'name': '+Project',
			\ 'p': [':Leaderf file', 'find-file'],
			\}

function! Clear_buffers() abort
  if confirm('Kill all other buffers?', "&Yes\n&No\n&Cancel") == 1
    let blisted = filter(range(1, bufnr('$')), 'buflisted(v:val)')
    for i in blisted
      if i != bufnr('%')
        try 
          exe 'bw ' . i
        catch
        endtry
      endif
    endfor
  endif
endfunction


let g:which_key_space['s']= {
			\ 'name': '+Split',
			\ 'k': [':set nosplitbelow|split|set splitbelow', 'split-k'],
			\ 'j': [':set splitbelow|split', 'split-j'],
			\ 'h': [':set nosplitright|vsplit|set splitright', 'split-h'],
			\ 'l': [':set splitright|vsplit', 'split-l'],
			\ 's': [':call ToggleWindowHorizontalVerticalSplit()', 'switch'],
			\ 'c': ['<C-W>o', 'close-split']
			\}

function! FindFileOnCurrentFolder()
	execute 'exe "Leaderf file " . expand("%:p:h")'
endfunction

function! ToggleWindowHorizontalVerticalSplit()
  if !exists('t:splitType')
    let t:splitType = 'vertical'
  endif

  if t:splitType == 'vertical' " is vertical switch to horizontal
    windo wincmd K
    let t:splitType = 'horizontal'

  else " is horizontal switch to vertical
    windo wincmd H
    let t:splitType = 'vertical'
  endif
endfunction

autocmd BufLeave * let g:which_key_space['l'] = {'name': '+Language'}

" replace <++>
