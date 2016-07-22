# it is likely already installed but:
sudo apt-get install linux-headers-generic

cd /tmp
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.5-18_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1404_7.5-18_amd64.deb
sudo apt-get update

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
aptitude search nvidia-3 -F'%p' | grep -vF ':i386'

sudo apt-get install nvidia-367 nvidia-367-dev
sudo reboot
