#! /bin/bash -x

#setting up services

cd ~/Projects/tmt/csw-prod
git pull --rebase
git checkout c05acca47
sbt universal:stage
./target/universal/stage/bin/csw-services.sh start -i en0

#to check if event and location is working HTTP GET http://localhost:7654/location/list