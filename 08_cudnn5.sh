# after uploading cudnn installation file into home dir
sudo cp cudnn-7.5-linux-x64-v5.0-ga.tgz /usr/local
cd /usr/local
sudo tar -xzf cudnn-7.5-linux-x64-v5.0-ga.tgz 
sudo ldconfig

# check
python -c "from theano.sandbox.cuda.dnn import dnn_available as da; print(da() or da.msg)"

echo -e "\n[dnn.conv]\nalgo_fwd=time_once\nalgo_bwd_data=time_once\nalgo_bwd_filter=time_once\n\n[lib]\ncnmem=0.45" >> ~/.theanorc