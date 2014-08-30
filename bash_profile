if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -f ~/.xmodmap ]; then
    xmodmap ~/.xmodmap
fi
 
# if [ -f ~/.Xmodmap ]; then
#     xmodmap ~/.Xmodmap
# fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
