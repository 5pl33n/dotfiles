#!/bin/bash

cd .mozzilla/firefox
local dir=$(ls | grep default-release)
mkdir $dir/chrome 
cd $dir/chrome
touch userChrome.css
cat << EOF
#TabsToolbar {
    visibility: collapse;
}

#sidebar-header {
  visibility: collapse !important;
}
EOF > userChrome.css

