set -x EDITOR nvim
set fish_greeting
set -x MANPAGER "nvim -c 'set ft=man' -"
set TERM "xterm-256color"

# set fish_color_normal brwhite
# set fish_color_autosuggestion brgrey
set fish_color_command brgreen # '#50fa7b'
# set fish_color_error brred #'#ff5555'
# set fish_color_param brpurple


fish_vi_key_bindings

### GIT

alias clone="git clone"
alias pull="git pull"
alias add="git add"
alias rmm="git rm"
alias remlist="git remote -v"
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
alias timetable='python3 $HOME/lang/python/timetable.py'
alias bstart='startx /usr/bin/bspwm'
alias dstart='startx /usr/local/bin/dwm'
alias rclear='/usr/bin/clear && colorscript -e 36'
alias compdir='sshfs karttikeya@192.168.1.15:/home/karttikeya ~/sshfs'
alias sushi="ssh sushi@43.231.56.189 -p 8224"
alias sushifs="sshfs sushi@43.231.56.189:/home/sushi/ sshfs/ -p 8224"
alias gentup="sudo emerge -avuDN --with-bdeps y @world"
alias remerge="sudo emerge -ca"
alias clean="sudo eclean-dist -d && sudo revdep-rebuild"
alias clear='echo -en "\x1b[2J\x1b[1;1H" ; echo; echo; seq 1 (tput cols) | sort -R | sparklines | lolcat; echo; echo'
alias pipes="pipes-rs -k curved -p 3 -t 0.13 -r 0.3"
alias ":q"="exit"

function getc
	gcc -dM -E - < /dev/null | grep __STDC_VERSION__ | awk '{ print $2 " --> " $3 }'
end


function ipub
	echo (drill myip.opendns.com @resolver1.opendns.com | awk '/myip/ {printf $5}')
end

echo 
# echo -en "\x1b[2J\x1b[1;1H" ; echo; echo; seq 1 (tput cols) | sort -R | spark | lolcat; echo; echo
colorscript -r
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
starship init fish | source
export PATH="$PATH:$HOME/.spicetify"
export PATH="$PATH:$HOME/.spicetify/spicetify"

# export PATH="$HOME/.nvm"
