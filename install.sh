#!/usr/bin/env bash
# install.sh
# Installs the critic syxntax checker.
# John R. Ray <john@johnray.io>
# set -x

## Variables
syn_dir="${HOME}/.vim/bundle/syntastic"

## Functions
main() {
  # Check that syntastic is installed
  [[ -d ${syn_dir} ]] || { echo 'Syntastic VIM plugin not detected'; exit 2; }
  # Copy critic.vim to $syn_dir/chef
  echo 'Installing critic.vim'
  cp critic.vim ${syn_dir}/syntax_checkers/chef/
  # Display Args to Add to .vimrc
  echo 'Please add the following to your .vimrc to enable critic'
  echo 'let g:syntastic_chef_checkers = ['foodcritic', 'critic']'
  echo 'let g:syntastic_chef_critic_args = "-I <location_of_foodcritic_rules>"'
}

## Source Check
[[ "${BASH_SOURCE}" == "$0" ]] && main "$@"
