#!/bin/bash
set -e

INCLUDEPATH="-I/usr/local/opencv-3.4.2/include -I/usr/local/opencv-3.4.2/include/opencv -I/usr/include -I /usr/include/eigen3/ -I /usr/include/eigen3/Eigen -I /media/marikhu/work/GitHub/DeepSort/src -I /home/marikhu/.local/lib/python3.6/site-packages/tensorflow/include/ "


LLIBPATH="-L/usr/local/opencv-3.4.2/lib -L/usr/local/lib -L/usr/lib "

#rm -rf DS 


function RUN(){
	LLIBS="-lopencv_core -lopencv_imgproc  -lopencv_highgui -lopencv_imgcodecs  -lboost_system -lglog -ltcmalloc"
	g++ --std=c++14 -O3 -o VideoTracking $INCLUDEPATH $LLIBPATH  src/VideoTracker.cpp src/errmsg.cpp src/main.cpp $LLIBS
}

RUN



