#!/bin/bash
#SHOULD EXECUTE bash tools/build_pack.sh first

HOME=`pwd`
for item in `cat tools/private-lib-1.txt `; do arm-linux-androideabi-strip  dist/default/python-install/$item; done


D=dist/private-lib-1
#rm -ir $D/*
# build private1
mkdir -p $D/bin
mkdir -p $D/lib/python2.7
mkdir -p $D/include/python2.7
cp dist/default/private/libpymodules.so $D
cp dist/default/private/lib/python27.zip $D/lib
cp build/python/Python-2.7.2/pyconfig.h $D/include/python2.7
cp -r dist/default/private/lib/python2.7/config $D/lib/python2.7/
cp -r dist/default/private/lib/python2.7/lib-dynload $D/lib/python2.7/
cp -r ../qpython-builtins/bin/*  $D/bin

cp build/python/Python-2.7.2/python $D/bin
cp build/python/Python-2.7.2/android5-python $D/bin/python-android5
arm-linux-androideabi-strip $D/bin/python-android5
arm-linux-androideabi-strip $D/bin/python
arm-linux-androideabi-strip $D/libpymodules.so
cd $D && tar -czvf /home/QPY/qpyc/dist/default/bin/private1.mp3  *



# build private2
rm -fr /tmp/private
mkdir -p /tmp/private/lib/python2.7

cp -r $HOME/dist/default/python-install/lib/python2.7/site-packages /tmp/private/lib/python2.7/
cd  /tmp/private && rm -rf lib/python2.7/site-packages/kivy && find  -name "*.pyc" -exec rm {} \; && find -name "*.pyo" -exec rm {} \; && tar -czvf /home/QPY/qpyc/dist/default/bin/private2.mp3 *


rm -fr /tmp/private3
mkdir -p /tmp/private3/lib/python2.7

cp -r $HOME/../qpython-builtins/site-packages  /tmp/private3/lib/python2.7/site-packages/
cd  /tmp/private3 && tar -czvf /home/QPY/qpyc/dist/default/bin/private3.mp3 *

