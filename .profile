# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# https://askubuntu.com/questions/121073/why-bash-profile-is-not-getting-sourced-when-opening-a-terminal#121075
# ----------------------------------------------------------------------

# ----------------------------------------------------------------------

# brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# rbenv
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"

# nodenv
eval "$(nodenv init -)"
export PATH="$HOME/.nodenv/bin:$PATH"
