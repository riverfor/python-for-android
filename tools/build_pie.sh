#!/bin/bash
cd ./build/python/Python-2.7.2/ && arm-linux-androideabi-gcc -DANDROID -mandroid  -fomit-frame-pointer --sysroot /home/QPY/android-ndk-r14b/platforms/android-14/arch-arm -lm -L/home/QPY/qpyc/build/openssl/openssl-1.0.2l/ -L/home/QPY/qpyc/src/obj/local/armeabi/ -Xlinker -export-dynamic -o android5-python Modules/python.o -L. -lpython2.7 -ldl  -L/home/QPY/qpyc/build/python-install/lib -lz    -lm -fPIE -pie

