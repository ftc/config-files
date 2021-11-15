#!/Users/shawnmeier/.pyenv/versions/3.6.5/bin/python3.6
##Script for removing latex commands
import sys

inputV = sys.argv[1]
inputV = inputV.replace("\\ref","")
print(inputV)
