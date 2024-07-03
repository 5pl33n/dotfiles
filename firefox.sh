#!/bin/bash

cd .mozilla/firefox
dir=$(ls | grep default-release)
mkdir $dir/chrome 
cd $dir/chrome
mv ~/5pl33n/dotfiles/firefox.css userChrome.css
