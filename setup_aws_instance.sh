#!/bin/bash

mkdir ssl
cd ssl
openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout "cert.key" -out "cert.pem" -batch

cd ..
jupyter notebook --generate-config
cat jupyter_notebook_config.py >> ~/.jupyter/jupyter_notebook_config.py

pip install keras --upgrade
pip3 install keras --upgrade
pip install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.6.0-cp36-cp36m-linux_x86_64.whl --upgrade
pip3 install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.6.0-cp36-cp36m-linux_x86_64.whl --upgrade
