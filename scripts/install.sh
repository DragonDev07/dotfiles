# ------ User Usage Warning ------ #
echo "------------------------ WARNING ----------------------------"
echo "THIS SCRIPT WILL OVERWRITE WHATEVER DOTFILES YOU ALREADY HAVE"
echo "PLEASE CONFIRM YOU UNDERSTAND (y/N): "
# TODO: Check if user given input is "y" or "Y", if not, exit program

echo "Please select current OS (1. MacOS, 2. Linux): "
# TODO: Check if user given input is "1" or "2" and set OS variable

echo "-------------------------------------------------------------"

# ------ Install Dotfiles (Linux)------ #
if [[ $OS=2 ]]; then
  "--- Installing Dotfiles for Linux ---"

  # --- Hyprland --- #
  echo "Installing Hyprland Dotfiles...."
  # TODO: Install Hyprland Dotfiles

  # --- Anyrun --- #
  echo "Installing Anyrun Dotfiles..."
  # TODO: Install Anyrun Dotfiles
  
  # TODO: Output list of programs that need to be installed to function
  # TODO: Exit the Program
fi

# TODO: Install Dotfiles for MacOS
