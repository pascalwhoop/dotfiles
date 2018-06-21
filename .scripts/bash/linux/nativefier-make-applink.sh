#!/bin/bash

function nativefier-make-app(){
	APPPATH=$1;
	NAME=$2;
	CATEGORIES=$3
	COMMENT=$4;
	echo "[Desktop Entry]
	Name=$NAME
	Comment=$COMMENT
	Exec=$APPPATH/$NAME %U
	Terminal=false
	Type=Application
	Icon=$APPPATH/resources/app/icon.png
	Categories=$CATEGORIES;" > "/home/pascalwhoop/.local/share/applications/menulibre-$NAME.desktop"
}	
