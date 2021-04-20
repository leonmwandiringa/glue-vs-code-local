#!/bin/bash
echo "--------------------------------------------------------------------"
echo "--------------------------------------------------------------------"
echo "--------------------------------------------------------------------"
echo "-------------------------LTM atm--------------------------------"
echo "-- Glue, Jupyter, Spark, Docker local workspace with vs code ------"
echo "---------- Make sure the below are installed-----------------------"
echo "-Vscode, Remote Containers(vs Code extension), Docker, awscli installed and configured-"
echo "--------------------------------------------------------------------
"

CURRENTFOLDER=`pwd`

if [ -z "$1" ]
  then
    echo "Source folder is required, please enter"
    sleep 5s
    exit 0
fi
SOURCEFOLDER=$1
echo "$CURRENTFOLDER/$SOURCEFOLDER/jupyter"

docker build -t workspace --build-arg "SOURCEFOLDER=$SOURCEFOLDER" .
docker run -itd -p 8888:8888 -p 4040:4040 -v $CURRENTFOLDER/$SOURCEFOLDER/jupyter:/home/jupyter/jupyter_default_dir -v ~/.aws:/root/.aws:ro -v $CURRENTFOLDER/$SOURCEFOLDER:/home/workspace/ --name glueworkspace workspace

echo $'\e[1;34m'"------------------- Done Building and running glue worskapce, you can now remote connect to it from vs code ------------------------
"$'\e[0m'