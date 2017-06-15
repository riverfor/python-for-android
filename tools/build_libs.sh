#!/bin/bash
HOME=`pwd`
rm -fr /tmp/kivy
cp -r dist/default/python-install/lib/python2.7/site-packages/kivy /tmp/

cd /tmp/kivy && find . -name "*.pyc" -exec rm {} \; && find . -name "*.py" -exec rm {} \; && zip -r /home/QPY/qpyc/dist/default/bin/kivy-1.9.1.zip *

rm -fr /tmp/jnius
cp -r $HOME/dist/default/python-install/lib/python2.7/site-packages/jnius /tmp/

cd /tmp/jnius && find . -name "*.pyc" -exec rm {} \; && find . -name "*.py" -exec rm {} \; && zip -r /home/QPY/qpyc/dist/default/bin/jnius.zip *


