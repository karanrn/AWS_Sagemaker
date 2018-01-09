'''
Deploying scikit learn in docker container
Author: Karan R Nadagoudar
'''

# Deploying container with ubuntu image
docker pull ubuntu
docker run ubuntu
docker cp scikit_docker.sh priceless_kowalevski:/root/sklearn.sh
docker run -it ubuntu

# Run in container
# Install python3
apt-get update
apt-get install -y python3-pip python3-dev
apt-get install -y python3-tk
cd /usr/local/bin
ln -s /usr/bin/python3 python3
pip3 install --upgrade pip

# Install sklearn and dependancies
pip3 install numpy scipy
pip3 install pandas
pip3 install matplotlib
pip3 install -U scikit-learn

# Commit the container
