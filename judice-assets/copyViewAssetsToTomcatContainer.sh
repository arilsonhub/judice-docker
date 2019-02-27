#!/bin/bash

homePath="home/arilson"
workspacePath="eclipse-workspace"
projectPath=$1
contextFolderPath="/$homePath/$workspacePath/$projectPath/context/"
containerName="docker_tomcat_1"
containerContextPath="/usr/local/tomcat/webapps/judice"

cd /
cd $contextFolderPath
docker cp main/. $containerName:$containerContextPath/main/
docker cp module/. $containerName:$containerContextPath/module/
docker cp script/. $containerName:$containerContextPath/script/
docker cp style/. $containerName:$containerContextPath/style/
echo "Os arquivos foram copiados para o container."