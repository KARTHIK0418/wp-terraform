#!/bin/bash
sudo yum update -y
sudo yum install git -y
git clone https://github.com/KARTHIK0418/car-prediction.git
cd car-prediction
pip3 install -r requirements.txt
screen -m -d python3 app.py
