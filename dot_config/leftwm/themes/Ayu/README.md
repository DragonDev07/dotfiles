# Orange Forest

## Screenshot

![Empty Desktop](./images/empty-desktop.png)

## Dependencies

- [leftwm](https://github.com/leftwm/leftwm)
- [picom](https://github.com/yshui/picom)
- [polybar](https://github.com/polybar/polybar)
- [font awesome(free)](https://github.com/FortAwesome/Font-Awesome)
- [source code pro font](https://github.com/adobe-fonts/source-code-pro)

## Installation

1. Install all required dependencies (required font ttf files can be added in ~/.fonts/)
2. Make a copy of this project in your themes folder

```BASH
cp -r ./leftwm-theme-orange-forest ~/.config/leftwm/themes
```

3. Remove the symlink to your current theme if set

```BASH
rm ~/.config/leftwm/themes/current
```
4. Set this as your current theme

```BASH
ln -s ~/.config/leftwm/themes/leftwm-theme-orange-forest ~/.config/leftwm/themes/current
```

5. Restart your window manager

```Default shortcut
$MOD + Shift + r
```
## Credits

This work is based of the excelent i3 theme collection from [Stavros Grigoriou (unix121)](https://github.com/unix121)
