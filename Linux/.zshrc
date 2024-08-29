# Pfetch Configuration
export PF_INFO="ascii title os uptime host"
export PF_ASCII="Catppuccin"

# Exec pfetch
pfetch

# Start p10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Add pyenv & pyenv-virtualenv to PATH
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

eval "$(pyenv virtualenv-init -)"

# Add things to path.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:/snap/bin
export PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:/home/teo/.local/bin/"
export PATH="$PATH:/home/teo/.local/bin/ltex-ls-16.0.0/bin"
export PATH="$PATH:/opt/android/sdk/cmdline-tools/tools/bin"

# Set OMZ to use p10k
ZSH_THEME="powerlevel10k/powerlevel10k"

# Load Plugins
plugins=(git aliases archlinux branch github zsh-autosuggestions zsh-syntax-highlighting zsh-completions zsh-interactive-cd zsh-navigation-tools)
source $ZSH/oh-my-zsh.sh

# Try Nvchad (for now)
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
