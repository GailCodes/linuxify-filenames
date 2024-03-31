#!/bin/bash

script_name="src/linuxify"

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "Error: Python 3 is not installed. Please install Python 3 and try again."
    exit 1
fi

# Check if script file exists
if [ ! -f "$script_name" ]; then
    echo "Error: $script_name not found."
    exit 1
fi

chmod +x "$script_name"

# Add shebang line if not already present
if [[ ! $(head -n 1 "$script_name") =~ ^\#\! ]]; then
    echo "#!/usr/bin/env python3" | cat - "$script_name" > temp && mv temp "$script_name"
fi

# Copy the script to /usr/local/bin
sudo cp "$script_name" /usr/local/bin

echo "Script '$script_name' installed successfully."
