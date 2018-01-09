'''
Installing docker ce
Author: Karan R Nadagoudar
'''

# Installing Docker Community Edition
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"   
sudo apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
sudo systemctl status docker

# Configuring the user
sudo usermod -aG docker ${USER}
su - ${USER}
id -nG
echo 'logout and login to use docker without sudo'


