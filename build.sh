#!/bin/sh

export TOP=/opt/css

# download jdk 11 if it does not exit
if [ ! -d ${TOP}/lib/jvm/jdk-11.0.2 ]; then
    wget --no-verbose https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz -O /tmp/openjdk-11+28_linux-x64_bin.tar.gz
    tar xfvz /tmp/openjdk-11+28_linux-x64_bin.tar.gz --directory ${TOP}/lib/jvm
    rm /tmp/openjdk-11+28_linux-x64_bin.tar.gz
fi

if [ ! -d ${TOP}/css-4.6.4 ]; then
    wget --no-verbose http://sourceforge.net/projects/cs-studio/files/nsls2-release/cs-studio-nsls2-4.6.4-linux.gtk.x86_64.tar.gz/download -O /tmp/cs-studio-nsls2-4.6.4-linux.gtk.x86_64.tar.gz
    mkdir ${TOP}/css-4.6.4
    tar xfvz /tmp/cs-studio-nsls2-4.6.4-linux.gtk.x86_64.tar.gz -C ${TOP}/css-4.6.4 --strip-components=1
fi
