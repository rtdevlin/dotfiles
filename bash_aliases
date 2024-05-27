alias vim="stty stop '' -ixoff ; vim" # allow C-s for save in vim

alias x='xmodmap ~/.xmodmap'
alias md='mkdir -p'

alias wh='which'

alias more='less'

alias v='vim'
alias p='pry'
alias m='more'
alias h='cat ~/.zsh_history | grep'

alias open='gnome-open'
alias o=open
alias clip='xclip -sel clip < '

alias rscript='~/.scripts/rbscript.rb'
alias 2mp3='~/.scripts/2mp3.rb'

alias sagi='sudo apt-get install'
alias sagiy='sudo apt-get install -y'
alias gsm='gnome-system-monitor'
alias msm='mate-system-monitor'
alias ack=ack-grep

alias mp3='~/.mp3.rb'
alias jmplayer='~/.jmplayer.rb'

alias lc='wc -l'
alias co='wc -l'

alias cd..='cd ..'
alias cdd='cd ..'
alias cddd='cd ..; cd ..'
alias cdddd='cd ..; cd ..; cd ..'
alias cddddd='cd ..; cd ..; cd ..; cd ..'

alias ll='ls -lh'
alias lla='ls -lha'
alias lld='ls -lh | grep "^d"'
alias llda='ls -lha | grep "^d"'
alias llad='ls -lha | grep "^d"'
alias list='ls -ltr'

alias f='fg'
alias ff='fg'
alias fgf='fg'
alias f1='fg %1'
alias fg1='fg %1'
alias f2='fg %2'
alias fg2='fg %2'
alias f3='fg %3'
alias fg3='fg %3'
alias f4='fg %4'
alias fg4='fg %4'
alias f5='fg %5'
alias fg5='fg %5'

alias g='grep'
alias gi='grep -i'
alias gr='grep -R'
alias gv='grep -v'
alias ge='grep -e'
alias gvb='grep -v "^Binary"'
alias gvi='grep -vi'
alias giv='grep -vi'
alias gri='grep -Ri'

alias psg='ps -e | grep'

alias cpr='cp -r'
alias cpn='cp -n'
alias cprn='cp -rn'
alias mvn='mv -n'
alias mvi='mv -i'

alias ba='vim ~/.bash_aliases && source ~/.bash_aliases'
alias na='vim ~/.bash_aliases && source ~/.bash_aliases'
alias zh='vim ~/.zsh_history'
alias ph='vim ~/.pry_history'
alias deb='vim ~/.dotfiles/debian.sh'
alias bits='vim ~/.bits'

alias r='rails'
alias rs='rails server'
alias rc='rails console'
alias rr='rake routes'
alias rg='rails generate'
alias rd='rails destroy'
alias rrg='rake routes | g'
alias rdm='rake db:migrate'
alias rdr='rake db:rollback'
alias fs='foreman start web -p 3000'
alias rjs='cd app/assets/javascripts'
alias rbb='pushd app/assets/javascripts/backbone'
alias ra='rake'
alias t='rake test'
# alias t='ruby test/services/**/*_test.rb'
alias rspec='rspec --color --format doc'

alias b='bundle'
alias be='bundle exec'
alias bu='bundle update'
alias bs='bundle show'
alias bc='bundle console'
alias gf='vim Gemfile'

alias webshare='ruby -run -e httpd . -p 5555'

alias pj='python -mjson.tool'

alias gs='git status -s'
alias ga='git add'
alias gaa='git add .'
alias gau='git add -u .'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gcma='git commit -am'
alias agcm='git commit --amend -m'
alias agcam='git commit --amend -am'
alias gpa='git push origin --all'
alias gll='git log --oneline --decorate --graph'
alias gld='git log --pretty=format:"%h%x09%an%x09%ad%x09%s"'
alias gdl='git diff "HEAD^"'
alias c='git commit -am'
alias s='git status -s'
alias github=hub
alias gh=hub

alias ugist='gist --update-by-name'

# gsub() { grep -rl "$1" . | xargs sed -i "s/$1/$2/g" }

tm() { tree "$1" | m }

alias mplayersub='mplayer -subcp utf8 -subfont "TakaoExGothic" -subfont-text-scale 3 -subfont-outline 1'

alias rtks='cat /home/saigon/rtk/rtk.xml | grep '
alias magic='cd;java -jar XMageLauncher-0.3.4.jar'
alias k='kubectl'
