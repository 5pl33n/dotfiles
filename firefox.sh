#!/bin/bash

cd .mozilla/firefox
dir=$(ls | grep default-release)
mkdir $dir/chrome 
cd $dir/chrome
mv ~/firefox.css userChrome.css
