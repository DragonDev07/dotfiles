# pfetch
export PF_INFO="ascii title os host uptime"
export PF_ASCII="Catppuccin"
pfetch

# Antigen for zsh package management.
source $HOME/antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle mrjohannchang/zsh-interactive-cd
antigen apply

# Adjust for moved Rust install.
export RUSTUP_HOME="$HOME/.local/share/rustup" 
export CARGO_HOME="$HOME/.local/share/cargo"

# Add things to path.
export PATH="$PATH:/home/teo/.local/bin/"
export PATH="$PATH:$HOME/.wakatime/"

# Replace ls with eza
alias ls='eza -al --color=always --group-directories-first --icons=auto' # preferred listing
alias la='eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons'  # long format

eval "$(oh-my-posh init zsh --config '~/.config/config.omp.json')"
