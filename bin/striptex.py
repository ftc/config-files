#!/Users/shawnmeier/.pyenv/versions/3.6.5/bin/python3.6
##Script for removing latex commands
# activate with \c in vim visual mode (see vimrc in vim directory)
#from pylatexenc.latexwalker import LatexWalker
import sys
import os
import re

if len(sys.argv) > 1:
    output = sys.argv[1]
else:
    output = sys.stdin.read()
#print(output)

lines = output.split('\n')
olines = []
for line in lines:
    olines.append(line.split('%')[0])

output='\n'.join(olines)

def removeCmdLeaveContents(cmdname, v):
	return re.sub(r'\\%s{([^}]*)}' % cmdname, r' \1 ',v)

def replaceCmdIgnoreContents(cmdname,replacement,v):
	return re.sub(r'\\%s{[^}]*}' % cmdname, r' %s ' % replacement,v)
# replace ref with contents

for refcmd in ['ref','autoref','figref','thmref']:
    # remove colon in references
    output = re.sub(r'\\%s{([^}:]*):([^}:]*)}' % refcmd,r'\1 \2', output)
    output = re.sub(r'\\%s{([^}:]*)}' % refcmd,r'\1', output)

for ignoreContentCmd in ['JEDI','begin','end','citet','cite', 'wfhistjudge']:
    output = replaceCmdIgnoreContents(ignoreContentCmd,'',output)

for keepContentCmd in ['emph', 'codej']:
    output = removeCmdLeaveContents(keepContentCmd, output)

output = re.sub(r'\$','',output)
output = re.sub(r'\%','',output)
os.system("say \"%s\"" % output)
