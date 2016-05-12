:b c

"File:        critic.vim
"Description: Syntax checking plugin for syntastic.vim
"Maintainer:  John Ray <john@johnray.io>
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"
"============================================================================

if exists('g:loaded_syntastic_chef_critic_checker')
    finish
endif
let g:loaded_syntastic_chef_critic_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_chef_critic_GetLocList() dict
    let makeprg = self.makeprgBuild({})
    
    " XXX023: Prefer conditional attributes: ./recipes/config.rb:49
    let errorformat = 'XX%n: %m: %f:%l'

    return SyntasticMake({
        \ 'makeprg': makeprg,
        \ 'errorformat': errorformat })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'chef',
    \ 'name': 'critic',
    \ 'exec': 'foodcritic'})

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set sw=4 sts=4 et fdm=marker:
