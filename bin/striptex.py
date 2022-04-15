#!/Users/shawnmeier/.pyenv/versions/3.6.5/bin/python3.6
##Script for removing latex commands
# activate with \c in vim visual mode (see vimrc in vim directory)
from pylatexenc.latexwalker import LatexWalker
import sys
import os
import re

#inputV = sys.argv[1]
#output = input()

output = sys.stdin.read()
#print(output)

def removeCmdLeaveContents(cmdname, v):
	return re.sub(r'\\%s{([^}]*)}' % cmdname, r' \1 ',v)

def replaceCmdIgnoreContents(cmdname,replacement,v):
	return re.sub(r'\\%s' % cmdname, r' %s ' % replacement,v)
# replace ref with contents
output = re.sub(r'\\ref{([^}:]*):([^}:]*)}',r'\1 \2', output)
output = re.sub(r'\\JEDI{[^}]*}',r'',output)
output = re.sub(r'\\begin{[^}]*}',r'',output)
output = re.sub(r'\\end{[^}]*}',r'',output)
output = removeCmdLeaveContents('emph',output)
output = replaceCmdIgnoreContents('wfhistjudge', 'math h',output)
output = replaceCmdIgnoreContents('citet','', output)
output = re.sub(r'\$','',output)
output = re.sub(r'\%','',output)
output = removeCmdLeaveContents('codej',output)
os.system("say \"%s\"" % output)
