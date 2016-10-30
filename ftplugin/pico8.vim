" Vim file type plug-in
" Language: Pico-8

if exists('b:did_ftplugin')
  finish
else
  let b:did_ftplugin = 1
endif

" A list of commands that undo buffer local changes made below.
let s:undo_ftplugin = []

" Set comment (formatting) related options. {{{1
setlocal fo-=t fo+=c fo+=r fo+=o fo+=q fo+=l
setlocal cms=--%s com=s:--[[,m:\ ,e:]],:--
call add(s:undo_ftplugin, 'setlocal fo< cms< com<')

setlocal sw=1 sts=1 et

" Let Vim know how to disable the plug-in.
call map(s:undo_ftplugin, "'execute ' . string(v:val)")
let b:undo_ftplugin = join(s:undo_ftplugin, ' | ')
unlet s:undo_ftplugin

" vim: ts=2 sw=2 et
