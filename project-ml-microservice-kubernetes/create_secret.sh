#!/usr/bin/env bash

kubectl create secret docker-registry phuongtd-secret-ecr \
 --docker-server=https://798426491631.dkr.ecr.ap-southeast-1.amazonaws.com \
 --docker-username=AWS \
 --docker-password=$(aws ecr get-login-password --region ap-southeast-1)
