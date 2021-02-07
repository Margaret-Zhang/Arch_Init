#!/bin/bash
set -e

JAVA_HOME=/opt/java/jdk1.8.0_261
read -p "Enter The Java Location(/opt/java/jdk1.8.0_261): " JAVA_HOME

echo -n "
# Java environment
export JAVA_HOME=${JAVA_HOME}
" >> ~/.bashrc

cat >> ~/.bashrc << "EOF"
export CLASSPATH=.:${JAVA_HOME}/lib/dt.jar:${JAVA_HOME}/lib/tools.jar
export PATH=${PATH}:${JAVA_HOME}/bin
EOF

echo "-------------------------"
tail -5 ~/.bashrc

