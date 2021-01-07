#! /bin/bash

cd amd64
sudo docker build . -t bestwu/wine:amd64 
cd ..
cd i386
sudo docker build . -t bestwu/wine -t bestwu/wine:i386
cd ..
# sudo docker push -a bestwu/wine
