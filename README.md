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
    - **Sometimes:** [`KDE Plasma`](https://kde.org/plasma-desktop/)
- **Top Bar:** [`waybar`](https://github.com/Alexays/Waybar)
- **Launcher:** [`rofi`](https://github.com/lbonn/rofi)
    - Fork supporting Wayland
- **Wallpaper Manager:** [`swww`](https://github.com/Horus645/swww)
- **Locking:** [`swaylock-effects`](https://github.com/mortie/swaylock-effects) and [`swayidle`](https://github.com/swaywm/swayidle)
- **Notifications:** [`mako`](https://github.com/emersion/mako)
- **Audio Control:** [`pavucontrol`](https://github.com/pulseaudio/pavucontrol)
- **Brightness Control:** [`brightnessctl`](https://github.com/Hummer12007/brightnessctl)
- **Network Manager GUI:** [`iwgtk`](https://github.com/J-Lentz/iwgtk)
- **Bluetooth Manager:** [`blueman`](https://github.com/blueman-project/blueman)
- **Theming:** 
    - [`qt5ct`](https://github.com/desktop-app/qt5ct)
    - [`Kvantum`](https://github.com/tsujan/Kvantum)
    - [`nwg-look`](https://github.com/nwg-piotr/nwg-look)

### Installation
1. Install Packages
```
sudo dnf install hyprland waybar rofi swww mako pavucontrol brightnessctl iwgtk blueman qt5ct Kvantum nwg-look kitty swayidle
sudo dnf copr enable ricclopez/swaylock-effects && sudo dnf install swaylock-effets
```

2. Edit Dotdrop config to contain your hostname
- Open `config.yaml`
- Change line 50 from:
```
profiles:
  Billy:
```
to:
```
profiles:
    your-hostname-here:
```

3. Update Dotdrop Manager!
```
pip3 install -r dotdrop/requirements.txt --user && ./dotdrop/bootstrap.sh
```

4. Install dots! :D
```
./dotdrop.sh install
```

5. Final Edits you may need:
- Inside `~/.config/hypr/scripts/random-wallpaper` update the dir to your wallpapers repo [you could use mine](https://github.com/DragonDev07/Wallpapers)
