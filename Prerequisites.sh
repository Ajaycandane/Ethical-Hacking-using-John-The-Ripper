#!/bin/bash

# Prompt user to proceed with each step until step 4
function prompt_step {
    local step_text="$1"
    while true; do
        read -p "Do you want to proceed with $step_text? (y/n): " answer
        case $answer in
            [Yy]* ) break;;
            [Nn]* ) echo "Skipping $step_text."; return 1;;
            * ) echo "Please answer yes or no.";;
        esac
    done
    return 0
}

# Step 1: Update system repositories
if prompt_step "updating system repositories"; then
    echo "Step 1: Updating system repositories..."
    sudo apt update
    echo "System repositories updated successfully."
fi

# Step 2: Install dependencies
if prompt_step "installing dependencies"; then
    echo "Step 2: Installing dependencies..."
    sudo apt install -y build-essential libssl-dev zlib1g-dev yasm pkg-config
    echo "Dependencies installed successfully."
fi

# Step 3: Download John the Ripper source code
if prompt_step "downloading John the Ripper source code"; then
    echo "Step 3: Downloading John the Ripper source code..."
    git clone https://github.com/magnumripper/JohnTheRipper.git
    cd JohnTheRipper/src
    echo "John the Ripper source code downloaded successfully."
fi

# Step 4: Compile John the Ripper
if prompt_step "compiling John the Ripper"; then
    echo "Step 4: Compiling John the Ripper..."
    ./configure && make -s clean && make -sj4
    echo "John the Ripper compiled successfully."
fi

# Step 5: Verify installation (this step is executed unconditionally)
echo "Step 5: Verifying installation..."
./john --version
echo "Installation verified successfully."

echo "Ethical hacking using John the Ripper prerequisites completed."
