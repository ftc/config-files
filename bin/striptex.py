#!/Users/shawnmeier/.pyenv/versions/3.6.5/bin/python3.6
##Script for removing latex commands
import sys
import os
import re

#inputV = sys.argv[1]
output = input()
#output = inputV.replace("\\ref","")
#print(inputV)

# replace ref with contents
output = re.sub(r'\\ref{([^}:]*):([^}:]*)}',r'\1 \2', output)
os.system("say \"%s\"" % output)
