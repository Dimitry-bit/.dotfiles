"" -- Map IDE actions to IdeaVim -- https://jb.gg/abva4t
" Find more examples here: https://jb.gg/share-ideavimrc

set scrolloff=8                         " Show a few lines of context around the cursor. Note that this makes the text scroll if you mouse-click near the start or end of the window.
set iskeyword+=-                      	" treat dash separated words as a word text object
set number                              " Line numbers
set relativenumber                      " Relative line numbers
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set visualbell
set incsearch                           " Do incremental searching.
set nohlsearch
set smartcase

" set leader key
let g:mapleader = " "

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Greatest remap ever
xnoremap <leader>p "_dP

inoremap jk <Esc>
inoremap kj <Esc>

"" Running and Debugging
" map <leader>rr <Action>(Run)
" map <leader>dd <Action>(Debug)
" map <leader>db <Action>(ToggleLineBreakpoint)
" map <leader>dw <Action>(ActivateDebugToolWindow)

"" LSP
nnoremap <silent> ge <Cmd>call VSCodeCall('editor.action.marker.next')<CR>
nnoremap <silent> gE <Cmd>call VSCodeCall('editor.action.marker.prev')<CR>
map <silent> gi <Cmd>call VSCodeCall('editor.action.goToImplementation')<CR>
map <silent> gd <Cmd>call VSCodeCall('editor.action.goToDeclaration')<CR>
map <silent> gu <Cmd>call VSCodeCall('references-view.findReferences')<CR>
" nnoremap <silent> gD <Cmd>call VSCodeCall('editor.action.revealDefinition')<CR>
" nnoremap <silent> gr <Cmd>call VSCodeCall('editor.action.referenceSearch.trigger')<CR>
" nnoremap <silent> gy <Cmd>call VSCodeCall('editor.action.goToTypeDefinition')<CR>
" map gc <Action>(GotoClass)
" map gp <Action>(GotToSuperMethod)
" map gb <Action>(Back)
" map gf <Action>(Forward)
" map <c-s> <Action>(GotoSymbol)

"" Refactor
" map <leader>rs <Action>(ChangeSignature)

" VsCode Folding
map zl <Cmd>call VSCodeNotify('editor.toggleFold')<CR>
map z; <Cmd>call VSCodeNotify('editor.foldAll')<CR>
map zm <Cmd>call VSCodeNotify('editor.unfoldAll')<CR>
map zp <Cmd>call VSCodeNotify('editor.gotoParentFold')<CR>
map zj <Cmd>call VSCodeNotify('editor.gotoNextFold')<CR>
map zk <Cmd>call VSCodeNotify('editor.gotoPreviousFold')<CR>
