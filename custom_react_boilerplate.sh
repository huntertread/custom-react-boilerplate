#! /bin/bash

echo "ready to start? [Y,n]"
read -p ">>" ready
if [[ $ready = y ]] || [[ $ready = Y ]]
then
  echo "what is your project's name?"
  read -p ">> " projectname
  echo "Your project will be named $projectname, continue? [Y,n]"
  read -p ">>" ready
    if [[ $ready = y ]] || [[ $ready = Y ]]
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
      # client directory start
      mkdir client
      cd client
        mkdir public
        cd public
          touch index.html
          cd ..
      # client directory end
      # src directory start
        mkdir src
        cd src
          touch index.js
          mkdir components
          cd components
            touch App.js
            cd ..
          cd ..
        cd ..
      # src directory end
      # server directory start
      mkdir server
      cd server
        touch index.js
        cd ..
      # server directory end
      # global files start
      touch .gitignore
        echo "## MAC files ##" >> .gitignore
        echo ".DS_Store" >> .gitignore
        echo "" >> .gitignore
        echo "## NPM ##" >> .gitignore
        echo "npm" >> .gitignore
        echo "npm-debug.log" >> .gitignore
        echo "node_modules/" >> .gitignore
        echo "" >> .gitignore
        echo "pids" >> .gitignore
        echo "*.pid" >> .gitignore
        echo "logs" >> .gitignore
        echo "*.log" >> .gitignore
        echo "" >> .gitignore
        echo "# Directory for instrumented libs generated by jscoverage/JSCover" >> .gitignore
        echo "lib-cov" >> .gitignore
        echo "" >> .gitignore
        echo "# Coverage directory used by tools like istanbul" >> .gitignore
        echo "coverage" >> .gitignore
        echo "" >> .gitignore
        echo "# Grunt intermediate storage (http://gruntjs.com/creating-plugins#storing-task-files)" >> .gitignore
        echo ".grunt" >> .gitignore
        echo "" >> .gitignore
        echo "# Compiled Dirs (http://nodejs.org/api/addons.html)" >> .gitignore
        echo "build/" >> .gitignore
        echo "dist/" >> .gitignore
      touch webpack.config.js
      echo "finished!"
      # global files end
    else
    echo "please come back when you are ready"
    fi
else
  echo "please come back when you are ready"
fi
