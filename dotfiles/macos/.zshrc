# pFetch Configuration
export PF_INFO="ascii title os uptime host"
export PF_ASCII="Catppuccin"

pfetch

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Add things to path.
export ZSH="$HOME/.oh-my-zsh"
export PATH="/opt/Homebrew/bin:$PATH"
export PATH="$PATH:/Users/andrewwelton/.local/bin/ltex-ls-16.0.0/bin"
export PATH="$PATH:/Users/andrewwelton/.local/bin"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Load Plugins
plugins=(git aliases archlinux branch github zsh-autosuggestions zsh-syntax-highlighting zsh-completions zsh-interactive-cd zsh-navigation-tools)
source $ZSH/oh-my-zsh.sh

# Use Better Vim and keybindings
alias vim='nvim'
bindkey -v

# Cmatrix & Pipes.sh
alias matrix='cmatrix -s -C cyan'
alias pipes='pipes.sh -t 3 -R -p 5'

# Replace ls with exa
alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format

#continue download
alias wget='wget -c'

#shutdown or reboot
alias sr='sudo reboot'
alias ssn='sudo shutdown now'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
