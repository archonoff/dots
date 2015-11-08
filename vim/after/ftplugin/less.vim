" after/ftplugin/less.vim - Settings for Less

runtime after/ftplugin/css.vim

let b:accio = 'lessc'

if !exists('b:undo_ftplugin')
  let b:undo_ftplugin = ''
endif

let b:undo_ftplugin .= '
      \ | unlet! b:accio
      \ '

" vim: fdm=marker:sw=2:sts=2:et
