#!/bin/bash
set -xe

cd /tmp
curl -qo BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

export SHELL=$SHELL

java -jar BuildTools.jar --rev ${SPIGOT_VERSION}
cp ${SPIGOT_BINARY}-${SPIGOT_VERSION}.jar /data/${SPIGOT_BINARY}.jar
