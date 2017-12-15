#!/bin/bash
# create multiresolution windows icon
ICON_SRC=../../src/qt/res/icons/PedrosPesos.png
ICON_DST=../../src/qt/res/icons/PedrosPesos.ico
convert ${ICON_SRC} -resize 16x16 PedrosPesos-16.png
convert ${ICON_SRC} -resize 32x32 PedrosPesos-32.png
convert ${ICON_SRC} -resize 48x48 PedrosPesos-48.png
convert PedrosPesos-48.png PedrosPesos-32.png PedrosPesos-16.png ${ICON_DST}

