# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
if [[ -n $DISPLAY ]];
then
    ZSH_THEME="bira"
else 
    ZSH_THEME="gallois"
fi

source $ZSH/oh-my-zsh.sh

alias vim=nvim # Use the supperior vim

# Enable Starship
eval "$(starship init zsh)"

# Get time since midnight
zmodload zsh/datetime
now=$EPOCHSECONDS
strftime -s today %F $now
strftime -rs midnight %F $today
since_midnight=$((now - midnight))

# Neofetch!
if [[ "$OSTYPE" != *darwin* ]]; then
    neofetch --ascii_distro `fortune neofetch-os` --disable terminal --disable packages --disable host --disable --disable uptime --disable shell --disable resolution --disable de --disable wm --disable "wm theme"   --disable theme --disable icons
else
    neofetch --disable terminal --disable packages --disable host --disable --disable uptime --disable shell --disable resolution --disable de --disable wm --disable "wm theme" --disable theme --disable icons
fi

echo
#if [[ "$OSTYE" != *darwin* ]]; then
    # Quotes
#    if [ "$since_midnight" -ge "75600" ]; then
#        cowsay -f $(get_cowfile) $(fortune -a -s -o) # No one is looking, make offensive jokes
#    else
#        cowsay -f $(get_cowfile) $(fortune -a -s) # People might be looking
#    fi
#fi

echo

# Disable palm detection
xinput set-prop 13 365 0 1>/dev/null 2>/dev/null

export PATH="$PATH:$HOME/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$HOME/.gem/ruby/3.0.0/bin"
alias mux=tmuxinator

export CC=/usr/bin/clang
export CXX=/usr/bin/clang++

bindkey -v # Vi keybindings

# ~/.zshrc

eval "$(starship init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
