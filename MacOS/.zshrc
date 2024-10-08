# Pfetch Configuration
export PF_INFO="ascii title os uptime host"
export PF_ASCII="Catppuccin"

# Exec pfetch
pfetch

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source Antigen
source $HOME/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Load the theme
# workaround for https://github.com/zsh-users/antigen/issues/675
THEME=romkatv/powerlevel10k
antigen list | grep $THEME; if [ $? -ne 0 ]; then antigen theme $THEME; fi

# Load Antigen oh-my-zsh Bundles
antigen bundle git
antigen bundle github
antigen bundle aliases
antigen bundle branch

# Other Antigen Plugins
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle mrjohannchang/zsh-interactive-cd
antigen bundle z-shell/zsh-navigation-tools@main

# Tell antigen that you're done
antigen apply

# Add things to path.
export ZSH="$HOME/.oh-my-zsh"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin/"
export PATH="$PATH:$HOME/.local/bin/ltex-ls-16.0.0/bin"

# NvChad over Vim!
alias nvchad='NVIM_APPNAME=nvchad nvim'

# Cmatrix & Pipes.sh
alias matrix='cmatrix -s -C cyan'
alias pipes='pipes.sh -t 3 -R -p 5'

# Replace ls with eza
alias ls='eza -al --color=always --group-directories-first --icons=auto' # preferred listing
alias la='eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons'  # long format

# Continue Downloads
alias wget='wget -c'

# Shutdown and Reboot Aliases
alias sr='sudo reboot'
alias ssn='sudo shutdown now'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
