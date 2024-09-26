#!/bin/bash

# Check if Python3 is installed
if ! command -v python3 &> /dev/null
then
    echo "Python3 is not installed. Please install it before running this script."
    exit
fi

# Create a virtual environment
python3 -m venv .venv

# Activate the virtual environment
source .venv/bin/activate

# Upgrade pip
pip install --upgrade pip
 

# Install requirements.txt
pip install -r requirements.txt

echo "Python virtual environment is created, packages are installed, and requirements.txt is generated."
echo "To activate the virtual environment, use: source .venv/bin/activate"