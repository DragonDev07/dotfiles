# Pfetch Configuration
export PF_INFO="ascii title os uptime host"
export PF_ASCII="Catppuccin"

pfetch

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Add things to path.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:/snap/bin
export PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:/home/teo/.local/bin/"
export PATH="$PATH:/home/teo/.local/bin/ltex-ls-16.0.0/bin"
export PATH="$PATH:/opt/android/sdk/cmdline-tools/tools/bin"

# Java Home
export JAVA_HOME="/home/teo/.sdkman/candidates/java/current/"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Load Plugins
plugins=(git aliases archlinux branch github zsh-autosuggestions zsh-syntax-highlighting zsh-completions zsh-interactive-cd zsh-navigation-tools)
source $ZSH/oh-my-zsh.sh

# Use LunarVim and keybindings
alias vim='lvim'
alias nvim='lvim'
bindkey -v

# Cmatrix & Pipes.sh
alias matrix='cmatrix -s -C cyan'
alias pipes='pipes.sh -t 3 -R -p 5'

# Replace ls with exa
alias ls='eza -al --color=always --group-directories-first --icons' # preferred listing
alias la='eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons'  # long format

#continue download
alias wget='wget -c'

#shutdown or reboot
alias sr='sudo reboot'
alias ssn='sudo shutdown now'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
