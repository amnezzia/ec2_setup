mkdir -p ~/code/mnist
cd ~/code/mnist
wget https://github.com/Lasagne/Lasagne/raw/master/examples/mnist.py
python mnist.py mlp 5


python `python -c "import os, theano; print(os.path.dirname(theano.__file__))"`/misc/check_blas.py


######### notebook setup
# make config
ipython
#from IPython.lib import passwd
#passwd()
#'sha1:385f7978cf58:6c9f3757c7e20791d97a3b8df623a48a6eceb0e7'

jupyter notebook --generate-config

mkdir certs
cd certs
sudo openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout mycert.pem -out mycert.pem

cd ~/.jupyter/
sudo nano jupyter_notebook_config.py

mkdir ~/Notebooks
cd ~/Notebooks