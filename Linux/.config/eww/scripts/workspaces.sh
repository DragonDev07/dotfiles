#!/bin/bash

# Define icons for focused and unfocused workspaces
focused_icon=" "
empty_icon=" "

# Function to get workspace info and generate Eww widget layout
generate_workspaces() {
  # Get all workspaces from hyprctl
  workspaces=$(hyprctl workspaces -j)

  # Get focused workspace
  focused_workspace=$(hyprctl monitors -j | jq '.[] | select(.focused).activeWorkspace.id')

  # Initialize eww workspace buttons with specific size and alignment
  eww_layout="(box :orientation \"h\" :halign \"start\" :space-evenly \"false\" :class \"workspace_module\" :width \"150\" :height \"40\""

  # Iterate through workspace IDs 1 to 4
  for i in {1..4}; do
    # Check if the workspace is focused or occupied
    if echo "$workspaces" | jq -e --argjson id "$i" '.[] | select(.id == $id)' >/dev/null; then
      if [[ "$i" == "$focused_workspace" ]]; then
        # Focused workspace
        eww_layout+="(button :onclick \"hyprctl dispatch workspace $i\" :class \"workspace-$i\" \"$focused_icon\") "
      else
        # Occupied but not focused
        eww_layout+="(button :onclick \"hyprctl dispatch workspace $i\" :class \"workspace-$i\" \"$empty_icon\") "
      fi
    else
      # Empty workspace
      eww_layout+="(button :onclick \"hyprctl dispatch workspace $i\" :class \"workspace-$i\" \"$empty_icon\") "
    fi
  done

  # Close the box
  eww_layout+=")"

  # Output the generated eww layout
  echo "$eww_layout"
}

# Initial generation of workspace buttons
generate_workspaces

# Listen for workspace changes and regenerate the layout
socat -u UNIX-CONNECT:/run/user/1000/hypr/"$HYPRLAND_INSTANCE_SIGNATURE"/.socket2.sock - | while read -r; do
  generate_workspaces
done