#!/bin/bash
./build.sh
cd public
git pull
git add -A
git commit -m "update"
git push -u origin --all
cd ../..
git pull
git add -A
git commit -m "update"
git push -u origin --all

