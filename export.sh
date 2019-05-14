#!/bin/bash
mkdir -p Export
for x in $(find -name "*.svg") ; do inkscape $x --export-png "${x/%.svg/.png}" ; done     
for x in $(find -name "*.png") ; do mv -f $x Export/ ; done 
