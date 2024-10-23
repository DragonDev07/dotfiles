#!/bin/sh

# Get total and used memory
total="$(free -m | grep Mem: | awk '{ print $2 }')"
used="$(free -m | grep Mem: | awk '{ print $3 }')"
free=$(expr $total - $used)

# Calculate memory usage percentage
percent=$(printf "%.0f\n" $(free -m | grep Mem | awk '{print ($3/$2)*100}'))

# Parse command-line arguments
case "$1" in
    "--total")
        echo $total
        ;;
    "--used")
        echo $used
        ;;
    "--free")
        echo $free
        ;;
    "--percent")
        echo $percent
        ;;
    *)
        echo "Invalid option"
        ;;
esac