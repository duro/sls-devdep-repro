#!/bin/bash

cd mono
yarn
yarn package
cd services/test-service/.serverless
unzip ./test-service.zip -d test-service
cd ../../../../no-mono
yarn
yarn package
cd ./.serverless
unzip ./test-service.zip -d test-service
cd ../../