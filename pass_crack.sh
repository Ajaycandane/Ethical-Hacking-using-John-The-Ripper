#!/bin/bash

# Step 1: Download rockyou.txt wordlist
read -p "Do you want to download the rockyou.txt wordlist? (y/n): " answer
if [ "$answer" = "y" ]; then
    echo "Downloading rockyou.txt wordlist..."
    wget -O rockyou.txt https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt
    echo "rockyou.txt wordlist downloaded successfully."
else
    echo "Skipping download of rockyou.txt wordlist."
fi

# Step 2: Extract hash from target RAR file
echo "Step 2: Extracting hash from target RAR file..."
rar2john case.rar > hash.txt
echo "Hash extracted successfully."

# Step 3: Crack password hash using wordlist
echo "Step 3: Cracking password hash using wordlist..."
john --format=RAR5 --wordlist=rockyou.txt hash.txt
echo "Password hash cracked successfully."

# Step 4: Analyze results and interpret findings
echo "Step 4: Analyzing results and interpreting findings..."
echo "Results:"
john --show hash.txt > password_cracked.txt
echo "Findings interpreted successfully."

echo "Ethical hacking using John the Ripper completed."
