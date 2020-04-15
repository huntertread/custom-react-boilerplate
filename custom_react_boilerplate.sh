#! /bin/bash

echo "ready to start? [Y,n]"
read -p ">>" ready
if [[ $ready = y ]]
then
  echo "what is your project's name?"
  read -p ">> " projectname
  echo "Your project will be named $projectname, continue? [Y,n]"
    read -p ">>" ready
    if [[ $ready = y ]]
    then
    echo "building project, please wait..."
    mkdir $projectname
    cd $projectname
      echo "npm initializing, please fill in form:"
      npm init
      # node module installs start
      echo "installing node modules, please wait..."
      npm install react
      npm install react-dom
      # node module installs end
      mkdir client
      cd client
        mkdir public
        cd public
          touch index.html
          cd ..
        mkdir src
        cd src
          touch index.js
          mkdir components
          cd components
            touch App.js
            cd ..
          cd ..
        cd ..
      mkdir server
      cd server
        touch index.js
        cd ..
      touch .gitignore
        echo "## MAC files ##" >> .gitignore
        echo ".DS_Store" >> .gitignore
      touch webpack.config.js
      echo "finished!"    
    else
    echo "please come back when you are ready"
    fi
else
  echo "please come back when you are ready"
fi
