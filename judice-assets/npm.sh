#!/bin/bash

homePath="home/$2"
workspacePath="eclipse-workspace"
projectPath=$1
scriptFolderPath="/$homePath/$workspacePath/$projectPath/context/script/"

cd /
cd $scriptFolderPath

npm $3