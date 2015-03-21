# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# http://stackoverflow.com/questions/6475524/making-sure-commands-dont-show-up-in-bash-history
# export HISTIGNORE="git reset*"
HISTFILE=~/.zsh_history
temp_histfile=~/.temp_histfile
touch $temp_histfile
grep -v -P ';rm ' $HISTFILE |
grep -v -P ';git rm ' | 
grep -v -P ';git reset ' > $temp_histfile
cp $temp_histfile $HISTFILE
