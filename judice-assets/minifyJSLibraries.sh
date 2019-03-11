#!/bin/bash

homePath="home/$2"
workspacePath="eclipse-workspace"
projectPath=$1
scriptFolderPath="/$homePath/$workspacePath/$projectPath/context/script/"

cd /
cd $scriptFolderPath

uglifyjs-folder library -e -x .js -o dist/library --pattern "**/*.js,!**/*min.js"