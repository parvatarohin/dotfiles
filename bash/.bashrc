#!/usr/bin/env bash

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Increase Bash history size. Allow 32³ entries; the default is 500.
export HISTSIZE='32768';
export HISTFILESIZE="${HISTSIZE}";
# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL='ignoreboth';

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

shopt -s nocaseglob;
shopt -s cdspell;
shopt -s dirspell 2> /dev/null
shopt -s globstar 2> /dev/null

PS1='\[\033]0;GIT: $PWD\007\]' # set window title
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\[\033[36m\]'       # change to green
PS1="$PS1"'parvatarohin '      # user <space>
PS1="$PS1"'\[\033[33m\]'       # change to brownish yellow
PS1="$PS1"'at '                # at <space>
PS1="$PS1"'\[\033[36m\]'       # change to green
PS1="$PS1"'\h '                # host <space>
PS1="$PS1"'\[\033[33m\]'       # change to brownish yellow
PS1="$PS1"'in '                # in <space>
PS1="$PS1"'\[\033[31m\]'       # change to red
PS1="$PS1"'\w'                 # current working directory
if test -z "$WINELOADERNOEXEC"
	then
	  GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
		COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
		COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
		COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
		if test -f "$COMPLETION_PATH/git-prompt.sh"
		then
			. "$COMPLETION_PATH/git-completion.bash"
			. "$COMPLETION_PATH/git-prompt.sh"
			PS1="$PS1"'\[\033[36m\]'  # change color to cyan
			PS1="$PS1"'`__git_ps1`'   # bash function
		fi
fi
PS1="$PS1"'\[\033[0m\]'        # change color
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'$ '                 # prompt: always $
MSYS2_PS1="$PS1"

[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path bash)"

export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
