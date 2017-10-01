" autoload/my/vim.vim - Vim script helpers

let s:script_types = [
      \ "plugin",
      \ "ftplugin",
      \ "autoload",
      \ "syntax",
      \ "indent",
      \ "compiler",
      \ "t",
      \ ]

function! s:is_type(type, path)
  return (stridx(a:path . "/", a:type) != -1)
endfunction

function! my#vim#guess_function_prefix(path)
  if s:is_type("autoload", a:path)
    let l:path = strpart(a:path, stridx(a:path, "autoload/") + strlen("autoload/"))
    return substitute(fnamemodify(l:path, ":r"), '/', '#', 'g') . "#"
  endif
  return "s:"
endfunction

function! my#vim#modeline()
  return 'vim: fdm=marker:sw=2:sts=2:et'
endfunction

" vim: fdm=marker:sw=2:sts=2:et
