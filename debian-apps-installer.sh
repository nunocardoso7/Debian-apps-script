#!/bin/bash

echo "updating..."
sudo apt update

#Programas do repositório

echo "installing nmap..."
sudo apt install nmap -y

echo "installing Keepassxc..."
sudo apt install keepassxc -y

echo "installing net-tools..."
sudo apt install net-tools -y

echo "installing rkhunter..."
sudo apt install rkhunter -y

echo "installing lynis..."
sudo apt install lynis -y

echo "installing htop..."
sudo apt install htop -y

echo "installing ranger..."
sudo apt install ranger -y

echo "installing dconf-editor..."
sudo apt install dconf-editor -y

echo "installing bashtop..."
sudo snap install bashtop -y

#Programas Externos

mkdir /home/$USER/Downloads/programs



#wget -c


#sudo dpkg -i *.deb


#Programas mais especificos

echo "installing brave browser..."
mkdir /home/$USER/Downloads/programs/brave
cd /home/$USER/Downloads/programs/brave


sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser -y



echo "installing signal..."

mkdir /home/$USER/Downloads/programs/signal
cd /home/$USER/Downloads/programs/signal



wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null

echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

sudo apt update && sudo apt install signal-desktop -y


echo "installing element..."
mkdir /home/$USER/Downloads/programs/element
cd /home/$USER/Downloads/programs/element

sudo apt install -y wget apt-transport-https

sudo wget -O /usr/share/keyrings/riot-im-archive-keyring.gpg https://packages.riot.im/debian/riot-im-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/riot-im-archive-keyring.gpg] https://packages.riot.im/debian/ default main" | sudo tee /etc/apt/sources.list.d/riot-im.list

sudo apt update

sudo apt install element-desktop -y

echo "installation complete!"
