# Ethical Hacking using John The Ripper

This repository contains a set of shell scripts designed to facilitate the ethical hacking process using John the Ripper, a powerful password cracking tool. The project is divided into two main scripts: prerequisites.sh and pass_crack.sh, each serving a distinct purpose in the password cracking workflow.

**Files:**

prerequisites.sh: This script automates the setup process by updating system repositories, installing necessary dependencies, downloading and compiling John the Ripper from source code, and verifying the installation. It encompasses steps 1 to 5 of the password cracking workflow.
pass_crack.sh: This script focuses on the password cracking process, including downloading the rockyou.txt wordlist, extracting the hash from a target RAR file, cracking the password hash using the wordlist, and analyzing the results. It encompasses steps 6 to 9 of the password cracking workflow.
Usage:

**1:Clone the repository to your local machine using the command:**

git clone https://github.com/your_username/ethical-hacking-john-the-ripper.git

**2:Navigate to the repository directory:**

cd ethical-hacking-john-the-ripper

**3:Make the shell scripts executable:**

chmod +x prerequisites.sh pass_crack.sh

**4:Execute the Prerequisites.sh script to set up the environment:**

./Prerequisites.sh

**5:Execute the pass_crack.sh script to perform the password cracking process:**

./pass_crack.sh

**Note:**

Ensure that you have appropriate permissions to execute the scripts.
Modify the target_file.rar variable in pass_crack.sh to specify the path to your target RAR file.
These scripts are intended for educational and ethical hacking purposes only. Usage for malicious activities is strictly prohibited.
