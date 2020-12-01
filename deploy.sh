#!/bin/bash

echo "$(pwd)"

ssh -i"test_ec2_linux.pem" ubuntu@ec2-34-211-44-48.us-west-2.compute.amazonaws.com

git clone https://github.com/HassanB1/node_express_server.git ./baba/

cd ./bab/

echo "$(pwd)"