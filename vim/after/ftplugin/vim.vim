" Keep separate spell file for Vim scripting
setlocal spellfile+=~/.vim/spell/vim.utf-8.add
setlocal keywordprg=:help

nnoremap <silent><buffer> <Leader>W :update<Bar>source %<CR>
nnoremap <silent><buffer> <LocalLeader>w :update<Bar>source %<CR>

iabbrev <buffer> ex   execute
iabbrev <buffer> exe  execute
iabbrev <buffer> exec execute
