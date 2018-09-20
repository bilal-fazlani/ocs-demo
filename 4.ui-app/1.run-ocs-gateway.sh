#! /bin/bash -x

cd ~/Projects/tmt/esw-prototype
git pull --rebase
sbt universal:stage
./target/universal/stage/bin/ocs-gateway