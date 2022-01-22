#!/bin/bash
# Variables for colors(text)
RED="\033[31m"
Green="\033[0;32m"
Yellow="\033[0;33m"
Cyan="\033[0;36m"
NC="\033[0m"
#
#
#
echo -e "${Green}The script will install will start the instalation soon... ${NC}"
sleep 3
echo = ""
echo -e "${Cyan}Installing Programs from apt...${NC}"
#
# Update repos
echo "updating..."
sudo apt update
#
# Programas do repositório
echo = ""
echo "installing nmap..."
sudo apt install nmap -y
echo = ""
echo "installing Keepassxc..."
sudo apt install keepassxc -y
echo = ""
echo "installing net-tools..."
sudo apt install net-tools -y
echo = ""
echo "installing rkhunter..."
sudo apt install rkhunter -y
echo = ""
echo "installing lynis..."
sudo apt install lynis -y
echo = ""
echo "installing htop..."
sudo apt install htop -y
echo = ""
echo "installing ranger..."
sudo apt install ranger -y
echo = ""
echo "installing dconf-editor..."
sudo apt install dconf-editor -y
echo = ""
echo "installing neofetch..."
sudo apt install neofetch -y
echo = ""
echo "installing screenfetch..."
sudo apt install screenfetch -y
echo = ""
echo "installing Notepadqq..."
sudo apt install notepadqq -y
#
#
# Snaps
echo = ""
echo -e "${Cyan}Installing Snaps...${NC}"
echo = ""
echo "installing bashtop..."
sudo snap install bashtop -y
echo = ""
echo "Installing Visual Studio Code..."
sudo snap install code --classic -y
echo = ""
echo "Installing Icedrive..."
sudo snap install icedrive -y
#
# Programas Externos
#
mkdir /home/$USER/Downloads/programs
cd /home/$USER/Downloads/programs
#
#wget -c {link}
#
# Portmaster
wget -c https://updates.safing.io/latest/linux_amd64/packages/portmaster-installer.deb
#
#
#
sudo dpkg -i *.deb
#
# Programas mais especificos
echo = ""
echo -e "${Cyan}Installing Specific Programs...${NC}"
echo = ""
echo "installing brave browser..."
mkdir /home/$USER/Downloads/programs/brave
cd /home/$USER/Downloads/programs/brave
#
#
sudo apt install apt-transport-https curl
#
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
#
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
#
sudo apt update
#
sudo apt install brave-browser -y
#
#
echo = ""
echo "installing signal..."
#
mkdir /home/$USER/Downloads/programs/signal
cd /home/$USER/Downloads/programs/signal
#
#
#
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
#
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
#
sudo apt update && sudo apt install signal-desktop -y
#
echo = ""
echo "installing element..."
mkdir /home/$USER/Downloads/programs/element
cd /home/$USER/Downloads/programs/element
#
sudo apt install -y wget apt-transport-https
#
sudo wget -O /usr/share/keyrings/riot-im-archive-keyring.gpg https://packages.riot.im/debian/riot-im-archive-keyring.gpg
#
echo "deb [signed-by=/usr/share/keyrings/riot-im-archive-keyring.gpg] https://packages.riot.im/debian/ default main" | sudo tee /etc/apt/sources.list.d/riot-im.list
#
sudo apt update
#
sudo apt install element-desktop -y
#
echo = ""
echo -e "${Green}installation complete!${NC}"
echo " "
