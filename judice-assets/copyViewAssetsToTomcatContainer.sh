#!/bin/bash

homePath="home/arilson"
workspacePath="eclipse-workspace"
projectPath="JudiceWeb_2.7"
contextFolderPath="/$homePath/$workspacePath/$projectPath/context/"

cd /
cd $contextFolderPath
docker cp module/. docker_tomcat_1:/usr/local/tomcat/webapps/judice/module/
docker cp script/. docker_tomcat_1:/usr/local/tomcat/webapps/judice/script/
docker cp style/. docker_tomcat_1:/usr/local/tomcat/webapps/judice/style/
echo "Os arquivos foram copiados para o container."