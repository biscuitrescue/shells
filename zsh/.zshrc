export EDITOR=nvim
export MANPAGER="nvim -c 'set ft=man' -"
export TERM="xterm-256color"


if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
# source $HOME/.zsh-vi-mode/zsh-vi-mode.plugin.zsh
bindkey -v

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

alias ll='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ls='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias rm='rm -i'
alias l.='exa -a | egrep "^\."'
alias vim='nvim'
alias timetable='python3 $HOME/python/timetable.py'
alias bstart='startx /usr/bin/bspwm'
alias dstart='startx /usr/local/bin/dwm'
alias clone='git clone'
alias rclear='clear && colorscript -e 32'
alias compdir='sshfs karttikeya@192.168.1.15:/home/karttikeya ~/sshfs'
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias sushi="ssh sushi@43.231.56.189 -p 8224"
alias sushifs="sshfs sushi@43.231.56.189:/home/sushi/ sshfs/ -p 8224"
alias ipub="echo $(drill myip.opendns.com @resolver1.opendns.com | awk '/myip/ {printf $5}')"

### GIT

alias pull="git pull"
alias add="git add"
alias rmm="git rm"
alias commit="git commit"
alias branch="git branch"
alias addrem="git remote add"
alias rmrem="git remote remove"
alias push="git push"
alias init="git push"
alias save="git config --global credential.helper store"

colorscript -e 32
timetable
eval "$(starship init zsh)"
