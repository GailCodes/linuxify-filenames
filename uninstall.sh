#!/bin/bash

script_name="linuxify"

# Check if script file exists in /usr/local/bin
if [ ! -f "/usr/local/bin/$script_name" ]; then
    echo "Error: $script_name is not installed in /usr/local/bin."
    exit 1
fi

sudo rm "/usr/local/bin/$script_name"

echo "'$script_name' uninstalled successfully"
