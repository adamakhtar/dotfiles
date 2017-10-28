# Shell aliases
alias reload='source ~/.zshrc'
alias cp='cp -i'                           # Preferred 'cp' implementation - ask for confirmation
alias mv='mv -i'                           # Preferred 'mv' implementation - ask for confirmation

alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

alias mkdir='mkdir -p'                     # My preferred mkdir - make many levels deep
mcd () { mkdir -p "$1" && cd "$1"; }       # mcd:  Makes new Dir and jumps inside
