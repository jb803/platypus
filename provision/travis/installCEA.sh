# Setup CEA

echo $PWD
#Change to directory of this script
cd "${0%/*}"
cd ../../cea
./getCea.sh
sudo echo "export CEA_DIR=$PWD" >> /etc/bash.bashrc