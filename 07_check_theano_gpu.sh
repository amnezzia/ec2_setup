
cd /tmp
wget https://gist.github.com/f0k/0d6431e3faa60bffc788f8b4daa029b1/raw/2e37a83a97f5df27e53326ec16879fcbd94850bf/cuda_check.c
nvcc -o cuda_check cuda_check.c -lcuda

sudo ./cuda_check

sudo cp -a cuda_check /root
sudo sh -c "echo '@reboot root /root/cuda_check' > /etc/cron.d/cuda"


echo -e "[global]\ndevice=gpu\nfloatX=float32\n\n[nvcc]\nfastmath=True\n\n[cuda]\nroot=/usr/local/cuda" >> ~/.theanorc


# testing
cd /tmp
wget -N https://github.com/Theano/Theano/raw/master/theano/misc/check_blas.py
python check_blas.py