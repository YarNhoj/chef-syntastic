# chef-syntastic
Generic vim plugin for [Syntastic](https://github.com/scrooloose/syntastic). It allows you to use custom foodcritic rules. 
Install Syntastic via [Pathogen](https://github.com/tpope/vim-pathogen) and the then run the install.sh that is provided. 
This will copy critic.vim into ~/.vim/bundle/syntastic/syntax_checkers/chef.
Enable by adding the following to your .vimrc
`let g:syntastic_chef_checkers = ['foodcritic','critic']`

Sample .vimrc
```
" Syntastic Chef Stuff
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_stl_format = "[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_id_checkers = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 1
let g:syntastic_chef_checkers = ['foodcritic','critic']
let g:syntastic_chef_critic_args = "-I <location_of_foodcritic_rules>"
let g:syntastic_ruby_checkers = ['rubocop']
```
