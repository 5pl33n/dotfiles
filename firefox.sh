#!/bin/bash

cd .mozzilla/firefox
local dir=$(ls | grep default-release)
mkdir $dir/chrome 
cd $dir/chrome
touch userChrome.css
cat << EOF
#nav-bar {
  margin-top: -2px !important;
}

#TabsToolbar {
    visibility: collapse;
}

#sidebar-header {
  visibility: collapse !important;
}
EOF > userChrome.css

