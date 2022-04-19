#!/bin/bash
#tesseract can be installed via pip
wget -O capt.png $1 
tesseract capt.png stdout | sed -r 's/ //g' |tr -d '\n' | pbcopy
rm capt.png

