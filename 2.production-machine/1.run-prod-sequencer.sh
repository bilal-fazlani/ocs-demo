#! /bin/bash -xe

rm -rf sequencer-scripts
git clone http://localhost:4000/git/root/sequencer-scripts.git
cd sequencer-scripts

#adding github remote
git remote add github git@github.com:tmtsoftware/sequencer-scripts.git
#disabling push to gitbucket
git remote set-url --push origin no_push

git checkout deploy
sbt universal:stage
./target/universal/stage/bin/sequencer-scripts iris darknight 8000

#stop