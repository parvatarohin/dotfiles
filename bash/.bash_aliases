#!/usr/bin/env bash

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"
alias -- -="cd -"

alias rm="rm -rf --"

# List only non-hidden entries
alias ll='ls -lhF'

# List only hidden (dotfile) entries
alias l.='ls -dF .*'
alias ls.='ls -dF .*'
alias ll.='ls -lhdF .*'

# Pretty print PATH variable
alias path='echo -e ${PATH//:/\\n}'

# Shortcuts
alias g="git"
alias n="npm"
alias q="exit"
alias y="yarn"

# Git (alternately use gitsh)
alias amend='git commit --amend'
alias branch='git checkout -b'
alias branches='git branch --all'
alias checkout='git checkout'
alias commit='git commit'
alias rebase='git rebase'
alias remotes='git remote --verbose'
alias stage='git add'
alias stash='git stash'
alias status='git status'
alias switch='git switch'
alias unstage='git reset HEAD'

# Git Large File Storage
alias lfs='git lfs'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"

# latexindent.pl with some customizations:
#
# option    description
# ------    -----------
#
#   -m      breaks lines; useful to format LaTeX so that
#           each sentence is on one physical line
#   -g      send indent.log to /dev/null
#   -l      use settings from ~/.latexindent.yaml
#
alias latexindent='latexindent -m -g /dev/null -l="$HOME/.latexindent.yaml"'

# Markdown using Pandoc:
# alias markdown='pandoc -S -f markdown+superscript+subscript -t html'
