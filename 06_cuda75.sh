
# check 
sudo nvidia-smi

cd /tmp
wget http://developer.download.nvidia.com/compute/cuda/7.5/Prod/local_installers/cuda_7.5.18_linux.run
sudo sh cuda_7.5.18_linux.run
# do not accept driver installation
# accept default and symlink

echo -e "export PATH=\"/usr/local/cuda/bin:\$PATH\"" >> ~/.bashrc
echo -e "export LD_LIBRARY_PATH=\"/usr/local/cuda/lib64:\$LD_LIBRARY_PATH\"" >> ~/.bashrc

sudo reboot

