#!/bin/bash


###############################
# By  @mrrobot1o1
###############################

sudo apt-get -y update
echo "Following Pakeges And Progam Will be Install"
echo "
#Programes/Applications

[1] Chrome
[2] sublime
[3] gobuster 
[4] terminator
[5] Vlc
[6] dconf-editor
[7] gnome-tweal-tool
[8] Discord
[9] virtual Box
[10] python-pip
[11] python3-pip
[12] Audacity
[13] Sonic-visualizer
[15] burp Suit
[16] impacket
[17] go

#Inssentials Pakeges

[1]  libcurl4-openssl-dev
[2]  libssl-dev
[3]  jq
[4]  ruby-full
[5]  curl4-openssl-dev libxml2 libxml2-dev libxslt1$
[6]  build-essential libssl-dev libffi-dev python-dev
[7]  python-setuptools
[8]  libldns-dev
[9]  Git
[10] python-dnspython
"

sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1$
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git


#install go
if [[ -z "$GOPATH" ]];then
echo "It looks like go is not installed, would you like to install it now"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
                yes)

					echo "Installing Golang"
					wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
					sudo tar -xvf go1.13.4.linux-amd64.tar.gz
					sudo mv go /usr/local
					export GOROOT=/usr/local/go
					export GOPATH=$HOME/go
					export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
					echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
					echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
					echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
					source ~/.bash_profile
					sleep 1
					break
					;;
				no)
					echo "Please install go and rerun this script"
					echo "Aborting installation..."
					exit 1
					;;
	esac	
done
fi

cd /opt


echo "[+] Installing  Nmap"
sudo apt-egt install -y nmap
echo "Done"


echo "[+] Installing Gnome-tweak-tool"
sudo apt-get install -y gnome-tweak-tool
echo "DOne"


echo "[+] Installing Chrome"
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

echo "[+] Installing Gobuster"
sudo go get github.com/OJ/gobuster
echo "Done"

echo "[+] Installing Vlc"
sudo apt install -y vlc
echo "Done"

echo "[+] Installing Discord"
sudo apt install gdebi-core wget
sudo apt update
sudo $ wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo gdebi ~/discord.deb
echo "Done"

echo "[+] Impacket installtion"
cd /opt
sudo git clone https://github.com/SecureAuthCorp/impacket.git
cd impacket
pip3 install .
sudo python3 setup.py
cd /opt
echo "Done"

echo "[+] Installing sonic-visualizer"
sudo apt-get install -y sonic-visualizer
echo "Done"

echo "[+] Installing Sublime-text"
sudo wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
sudo echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get -y update
sudo apt-get install -y sublime-text
echo "Done"

echo "[+] Installing Visual Studio Code"
sudo apt install -y Code
echo "Done"

echo "[+] Installing Audacity"
sudo apt install -y audacity
echo "Done"

echo "[+] Installing VirtualBox"
sudo apt install -y virtualbox
echo "Done"

echo "[+] Installing Spotify"
sudo curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
sudo echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get -y update && sudo apt-get install -y spotify-client
echo "Done"


echo "[+] Installing OBS Studio"
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt-get update
sudo apt-get install -y obs-studio


echo "[+] Installing Tmux"
sudo apt install -y tmux
echo "Done"

echo "Installing Terminator"
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator
sudo apt install -f
echo "Done"

echo "[+] Setting Up tmux configaration"
wget https://raw.githubusercontent.com/mrrobot1o1/Ubuntu-setup-Script/main/.tmux.conf
mv .tmux.conf ~/
echo "Done"