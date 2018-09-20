#! /bin/bash -xe

#: ${1?Please provide cluster seed address}

ip=`ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2`
addr=$ip:5552
export clusterSeeds=$addr

cd ~/Projects/tmt/sample-assembly-hcd
git pull --rebase
sbt universal:stage
#running sample assembly
./sample1-deploy/target/universal/stage/bin/sample-1-container-cmd-app --standalone --local ./sample1-deploy/src/main/resources/Sample1AssemblyStandalone.conf
