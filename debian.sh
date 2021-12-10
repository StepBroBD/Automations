#!/bin/bash
############################# Update
sudo apt update
sudo apt upgrade -y
sudo apt-get update
sudo apt-get upgrade -y
############################# Compiler Setup
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev -y
bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
############################# Docker
sudo apt-get install ca-certificates curl gnupg lsb-release -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
############################# Z-Shell
sudo apt install zsh zplug -y
chsh -s /bin/zsh
############################# Dotfiles Setup
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/StepBroBD/Dotfiles/master/setup.sh | zsh
############################# UFW
sudo apt install ufw -y
sudo ufw allow OpenSSH
sudo ufw enable < y
############################# HTOP
sudo apt install htop -y
############################# Neofetch
sudo apt-get install neofetch -y
