# ND (New-Dotfiles)

## Asahi Linux (Mac M1 Air)

### Screenshots

![Hyprland-Desktop](./assets/Asahi-Linux/AsahiLinux-Hyprland-Desktop.png)
![Hyprland-Music](./assets/Asahi-Linux/AsahiLinux-Hyprland-Music.png)
![Hyprland-LunarVim](./assets/Asahi-Linux/AsahiLinux-Hyprland-Lunarvim.png)
![Hyprland-Fetch](./assets/Asahi-Linux/AsahiLinux-Hyprland-Fetch.png)

### Info!

- **Terminal Emulator:** [`kitty`](https://github.com/kovidgoyal/kitty)
- **Shell:** `Zsh`
  - **Plugin Manager:** [`oh-my-zsh`](https://github.com/ohmyzsh/ohmyzsh)
  - **Plugins:**
    - `git`
    - `aliases`
    - `branch`
    - `github`
    - [`powerlevel10k`](https://github.com/romkatv/powerlevel10k)
    - [`zsh-autosuggesttions`](https://github.com/zsh-users/zsh-autosuggestions)
    - [`zsh-syntax-highlighting`](https://github.com/zsh-users/zsh-syntax-highlighting)
    - [`zsh-completions`](https://github.com/zsh-users/zsh-completions)
    - [`zsh-interactive-cd`](https://github.com/mrjohannchang/zsh-interactive-cd)
    - [`zsh-navigation-tools`](https://github.com/z-shell/zsh-navigation-tools)
- **Desktop Environment:** [`Hyprland`](https://github.com/hyprwm/Hyprland)
- **Top Bar:** [`waybar`](https://github.com/Alexays/Waybar)
- **Launcher:** [`anyrun`](https://github.com/Kirottu/anyrun)
- **Wallpaper Manager:** [`swww`](https://github.com/Horus645/swww)
- **Locking:**
  - [`hyprlock`](https://github.com/hyprwm/hyprlock)
  - [`hypridle`](https://github.com/hyprwm/hypridle)
- **Notifications:** [`mako`](https://github.com/emersion/mako)
- **Audio Control:** [`pavucontrol`](https://github.com/pulseaudio/pavucontrol)
- **Brightness Control:** [`brightnessctl`](https://github.com/Hummer12007/brightnessctl)
- **Bluetooth Manager:** [`blueman`](https://github.com/blueman-project/blueman) [`blueman-applet`]
- **Network Manager:** [`NetworkManager Applet`]
- **Theming:**
  - [`qt5ct`](https://github.com/desktop-app/qt5ct)
  - [`Kvantum`](https://github.com/tsujan/Kvantum)

### Installation (Fedora)

- Install dnf packages:
  `sudo dnf install kitty mako zsh gh waybar blueman brightnessctl pavucontrol qt5ct kvantum Hyprland swww`

- Install ohmyzsh:
  `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

- Install zsh plugins
- Build and Install the following:
  - Anyrun
  - Hyprlock
  - Hypridle
- Clone Wallpapers Repo
- Install LunarVim
- Install dotfiles
