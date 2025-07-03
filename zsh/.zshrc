#
# ~/.bashrc
#

# Helps system know ghostty is our terminal and exists
export TERMINAL=ghostty
export PATH=$PATH:/usr/bin/ghostty


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='%F{green}%~%f %F{pink}%$%f '
PROMPT='%F{green}%c%f %F{magenta}>>%f '


#Alias for gigabrain web server server.epsteins-flight-logs.com
# Connect to the web server 
alias connecttogigabrain='ssh -p 2222 giga-brain@server.epsteins-flight-logs.com'
# Download the server to my local drive
alias downloadfromgigabrain='rsync -avz -e "ssh -p 2222" giga-brain@server.epsteins-flight-logs.com:/home/giga-brain/server ~/'
# Transfer documents from webserver to local machine
alias uploadtogigabrain='rsync -avz -e "ssh -p 2222" ~/server giga-brain@server.epsteins-flight-logs.com:/home/giga-brain/'

# Delete unmatched files on local compared to server
alias deletefromlocal='rsync -avz -e "ssh -p 2222" --delete giga-brain@server.epsteins-flight-logs.com:/home/giga-brain/server ~/'
# Delete unmatched files on server compared to local machine
alias deletefromserver='rsync -avz -e "ssh -p 2222" --delete ~/server giga-brain@server.epsteins-flight-logs.com:/home/giga-brain/'

# Commands for compsci folder
# Delete unmatched files on local compared to server
alias pullfromserver='rsync -avz -e "ssh -p 2222" --delete giga-brain@server.epsteins-flight-logs.com:/home/giga-brain/computer-science ~/'
# Delete unmatched files on server compared to local machine
alias pushtoserver='rsync -avz -e "ssh -p 2222" --delete ~/computer-science giga-brain@server.epsteins-flight-logs.com:/home/giga-brain/'


# export GTK_THEME="Arc-Dark"
# export GTK_ICON_THEME="Adwaita"
# export GDK_DPI_SCALE=1.0

# Alias for jupyter lab
alias jlab="jupyter-lab"

# Pythons a bitch and so we have to downgrade for it to work with tensor... 
# so actually tensor is the bitch
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

export PATH=/opt/scala3/bin:$PATH
export PATH="$PATH:$HOME/.local/share/coursier/bin"
export PATH="$HOME/.local/share/coursier/bin:$PATH" # or /home/lenny/.bashrc

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# This stuff is for jumper 
jmp() {
    local dest 
    dest=$(python ~/projects/jumper/proto.py "$1" 2>/dev/null)

    if [[ -z "$dest" ]]; then 
        echo "jmp: No directory found or invalid input."
        return 1 
    fi 

    if [[ "$dest" == Multiple* ]]; then 
        echo "$dest"
        return 1 
    fi 


    cd "$dest" || echo "jmp: failed to jump to $dest"

}
