import os
import subprocess

# Get Theme File 
THEME_FILE = os.path.expanduser("~/.config/.theme")

# List of themes
THEMES = ["catppuccin-mocha", "catppuccin-macchiato", "catppuccin-frappe", "catppuccin-latte"]

# Function to get the index of the current theme
def get_current_theme_index():
    try:
        with open(THEME_FILE, "r") as file:
            current_theme = file.readline().strip()
            if current_theme in THEMES:
                return THEMES.index(current_theme)
    except FileNotFoundError:
        pass

    # If the current theme is not found in the list or the file is empty, default to index 0
    return 0

# Function to Update Waybar Config
def switch_waybar_theme(theme: str):
    # Link Theme File
    if theme == "catppuccin-mocha":
        subprocess.run(["ln", "-sf", os.path.expanduser("~/.config/waybar/themes/catppuccin-mocha.css"), os.path.expanduser("~/.config/waybar/theme.css")], check=True)
    elif theme == "catppuccin-macchiato":
        subprocess.run(["ln", "-sf", os.path.expanduser("~/.config/waybar/themes/catppuccin-macchiato.css"), os.path.expanduser("~/.config/waybar/theme.css")], check=True)
    elif theme == "catppuccin-frappe":
        subprocess.run(["ln", "-sf", os.path.expanduser("~/.config/waybar/themes/catppuccin-frappe.css"), os.path.expanduser("~/.config/waybar/theme.css")], check=True)
    elif theme == "catppuccin-latte":
        subprocess.run(["ln", "-sf", os.path.expanduser("~/.config/waybar/themes/catppuccin-latte.css"), os.path.expanduser("~/.config/waybar/theme.css")], check=True)
    
    # Define Reload Commands
    reload_commands = [ "pkill waybar", "sleep 0.5", "waybar&" ]

    # Reload Waybar
    for command in reload_commands:
        subprocess.run(command, shell=True, check=True)

    # Print Success Message
    print("Waybar Theme Updated")

def switch_hypr_theme(theme: str):
    # Link Theme File
    if theme == "catppuccin-mocha":
        subprocess.run(["ln", "-sf", os.path.expanduser("~/.config/hypr/themes/catppuccin-mocha.conf"), os.path.expanduser("~/.config/hypr/theme.conf")], check=True)
    elif theme == "catppuccin-macchiato":
        subprocess.run(["ln", "-sf", os.path.expanduser("~/.config/hypr/themes/catppuccin-macchiato.conf"), os.path.expanduser("~/.config/hypr/theme.conf")], check=True)
    elif theme == "catppuccin-frappe":
        subprocess.run(["ln", "-sf", os.path.expanduser("~/.config/hypr/themes/catppuccin-frappe.conf"), os.path.expanduser("~/.config/hypr/theme.conf")], check=True)
    elif theme == "catppuccin-latte":
        subprocess.run(["ln", "-sf", os.path.expanduser("~/.config/hypr/themes/catppuccin-latte.conf"), os.path.expanduser("~/.config/hypr/theme.conf")], check=True)
    
    # Hyprland doesn't need to be reloaded
    
    # Print Success Message
    print("Hyprland Theme Updated")

def switch_cava_theme(theme: str):
    # Link Theme File
    if theme == "catppuccin-mocha":
        subprocess.run(["ln", "-sf", os.path.expanduser("~/.config/cava/themes/catppuccin-mocha"), os.path.expanduser("~/.config/cava/config")], check=True)
    elif theme == "catppuccin-macchiato":
        subprocess.run(["ln", "-sf", os.path.expanduser("~/.config/cava/themes/catppuccin-macchiato"), os.path.expanduser("~/.config/cava/config")], check=True)
    elif theme == "catppuccin-frappe":
        subprocess.run(["ln", "-sf", os.path.expanduser("~/.config/cava/themes/catppuccin-frappe"), os.path.expanduser("~/.config/cava/config")], check=True)
    elif theme == "catppuccin-latte":
        subprocess.run(["ln", "-sf", os.path.expanduser("~/.config/cava/themes/catppuccin-latte"), os.path.expanduser("~/.config/cava/config")], check=True)
    
    # Reload Cava IF cava is running (Colors Only)
    if subprocess.run(["pgrep", "cava"], stdout=subprocess.PIPE).returncode == 0:
        subprocess.run(["pkill", "-USR1", "cava"], check=True)
    
    # Print Success Message
    print("Cava Theme Updated")

def switch_anyrun_theme(theme: str):
    if theme == "catppuccin-mocha":
        subprocess.run(["ln", "-sf", os.path.expanduser("~/.config/anyrun/themes/catppuccin-mocha.css"), os.path.expanduser("~/.config/anyrun/theme.css")], check=True)
    elif theme == "catppuccin-macchiato":
        subprocess.run(["ln", "-sf", os.path.expanduser("~/.config/anyrun/themes/catppuccin-macchiato.css"), os.path.expanduser("~/.config/anyrun/theme.css")], check=True)
    elif theme == "catppuccin-frappe":
        subprocess.run(["ln", "-sf", os.path.expanduser("~/.config/anyrun/themes/catppuccin-frappe.css"), os.path.expanduser("~/.config/anyrun/theme.css")], check=True)
    elif theme == "catppuccin-latte":
        subprocess.run(["ln", "-sf", os.path.expanduser("~/.config/anyrun/themes/catppuccin-latte.css"), os.path.expanduser("~/.config/anyrun/theme.css")], check=True)

    # Anyrun doesn't need to be reloaded

    # Print Success Message
    print("Anyrun Theme Updated")

# Function to switch to the next theme
def switch_theme():
    current_index = get_current_theme_index()
    print("Current index:", current_index)
    next_index = (current_index + 1) % len(THEMES)
    print("Next index:", next_index)
    next_theme = THEMES[next_index]
    with open(THEME_FILE, "w") as file:
        file.write(next_theme)
    print("Switching to", next_theme)

    # Update services or perform any other actions needed
    switch_waybar_theme(next_theme)
    switch_hypr_theme(next_theme)
    switch_cava_theme(next_theme)
    switch_anyrun_theme(next_theme)

# Main script
switch_theme()
