######### notebook setup
# make config
ipython
#from IPython.lib import passwd
#passwd()

jupyter notebook --generate-config

mkdir certs
cd certs
sudo openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout mycert.pem -out mycert.pem

cd ~/.jupyter/
sudo nano jupyter_notebook_config.py

mkdir ~/Notebooks
cd ~/Notebooks
jupyter notebook