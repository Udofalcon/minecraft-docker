#!/bin/bash
cd minecraft

if [ ! -f "eula.txt" ]; then
    INSTALLER=$(ls | grep forge)
    java -jar $INSTALLER --installServer
    rm $INSTALLER $INSTALLER.log

    touch eula.txt
    echo "eula=true" > "eula.txt"
fi

JAR=$(ls | grep forge)
java -Xms512M -Xmx8192M -jar $JAR nogui
