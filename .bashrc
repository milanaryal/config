# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples


# ----------------------------------------------------------------------
# | Add the following line at the bottom of ~/.bashrc file             |
# | this will override the default configuration                       |
# ----------------------------------------------------------------------

# Add git branch if its present to PS1
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1='\[\e]0;\u@\h: \w\a\]\[\033[00;35m\]➜ \[\033[01;36m\]\w\[\033[01;33m\]$(parse_git_branch) \[\033[31m\]\$\[\033[0m\] '
