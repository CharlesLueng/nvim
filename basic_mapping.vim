
" ===
" === Basic Mappings
" ===
" Set <LEADER> as <SPACE>, ; as :
" let mapleader=" "
let mapleader = "\\"
let maplocalleader = ","

noremap ; :

inoremap jk <Esc>

" Save & quit
noremap Q :q<CR>
noremap <C-q> :qa<CR>
noremap S :w<CR>

" Open the vimrc file anytime
" noremap <SPACE>ve :e ~/.config/nvim/init.vim<CR>
"
" noremap <SPACE>vr :so ~/.config/nvim/init.vim<CR>


" make Y to copy till the end of the line
nnoremap Y y$


" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>

" Search
" noremap <localleader>/ :nohlsearch<CR>



" Folding
" noremap <silent> <SPACE>o za


" K/J keys for 5 times u/e (faster navigation)
noremap <silent> K 5k
noremap <silent> J 5j


" H key: go to the start of the line
noremap <silent> H 0
" L key: go to the end of the line
noremap <silent> L $


" Faster in-line navigation
noremap W 5w
noremap B 5b


 " split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
"  noremap <leader>sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
"  noremap <leader>sj :set splitbelow<CR>:split<CR>
"  noremap <leader>sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
"  noremap <leader>sl :set splitright<CR>:vsplit<CR>

 " Resize splits with arrow keys
 noremap <up> :res +5<CR>
 noremap <down> :res -5<CR>
 noremap <left> :vertical resize-5<CR>
 noremap <right> :vertical resize+5<CR>

 " Place the two screens up and down
 "noremap <LEADER>sH <C-w>t<C-w>K
 " Place the two screens side by side
"  noremap <leader>sV <C-w>t<C-w>H


 " Rotate screens
"  noremap <leader>srh <C-w>b<C-w>K
"  noremap <leader>srv <C-w>b<C-w>H

 " Press <SPACE> + q to close the window below the current window
"  noremap <localleader>q <C-w>j:q<CR>
"  noremap <SPACE>d :bd<CR>


 " ===
 " === Tab management
 " ===
"  " Create a new tab with tu
"  noremap <SPACE>tu :tabe<CR>
"  " Move around tabs with tn and ti
"  noremap <SPACE>th :-tabnext<CR>
"  noremap <SPACE>tl :+tabnext<CR>
"  " Move the tabs with tmn and tmi
"  noremap <SPACE>tmh :-tabmove<CR>
"  noremap <SPACE>tml :+tabmove<CR>
"  noremap <SPACE>tn :tabn<CR>
"  noremap <SPACE>tp :tabp<CR>


 " ===
 " === Markdown Settings
 " ===
 " Snippets
 source ~/.config/nvim/md-snippets.vim
 " auto spell
 autocmd BufRead,BufNewFile *.md setlocal spell


 autocmd filetype vue,javascript setlocal shiftwidth=2 tabstop=2 expandtab
autocmd filetype cs setlocal shiftwidth=4 tabstop=4 expandtab

autocmd filetype html,cshtml setlocal shiftwidth=4 tabstop=4 expandtab

function SmartQuit()
    if !&modified
        exec "quit"
    else
        redraw
        echohl WarningMsg
        echo "Buffer changed! [^W]w [^S]x [^B^N]q!: "
        echohl None

        let cmd = ""
        let ret = nr2char(getchar())

        if ret == "\<C-b>" || ret == "\<C-n>"
            " BOOM! NUKE!
            let cmd = "q!"
        elseif ret == "\<C-w>"
            let cmd = "w"
        elseif ret == "\<C-s>"
            let cmd = "x"
        endif

        redraw
        if !empty(cmd)
            exec cmd
        endif
    endif
endfunction

nnoremap <unique> <C-c> :call SmartQuit()<CR>
