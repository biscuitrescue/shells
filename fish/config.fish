set -x EDITOR neovide
set fish_greeting
set -x MANPAGER "nvim -c 'set ft=man' -"
set TERM "xterm-256color"

set fish_color_normal brwhite
set fish_color_autosuggestion brgrey
# set fish_color_command '#50fa7b'
set fish_color_command brgreen
set fish_color_error brred #'#ff5555'
set fish_color_param brpurple


fish_vi_key_bindings

### GIT

alias clone="git clone"
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

alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias ll='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ls='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'
alias vim='nvim'
alias timetable='python3 $HOME/python/timetable.py'
alias bstart='startx /usr/bin/bspwm'
alias dstart='startx /usr/local/bin/dwm'
alias rclear='clear && colorscript -e 32'
alias compdir='sshfs karttikeya@192.168.1.15:/home/karttikeya ~/sshfs'
alias sushi="ssh sushi@43.231.56.189 -p 8224"
alias sushifs="sshfs sushi@43.231.56.189:/home/sushi/ sshfs/ -p 8224"

function ipub
	echo (drill myip.opendns.com @resolver1.opendns.com | awk '/myip/ {printf $5}')
end

echo 
neofetch
# python3 $HOME/python/timetable.py
starship init fish | source
