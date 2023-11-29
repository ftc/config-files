#!/bin/zsh
#export PATH="/Users/shawnmeier/Documents/source/config-files/bin:$PATH"
#export PIPENV_PYTHON="$PYENV_ROOT/python"
#
## pyenv config
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$(pyenv root)/shims:$PATH"
#if command -v pyenv 1>/dev/null 2>&1; then
#  eval "$(pyenv init -)"
#fi
#
#pyenv local 3.6.5
#
cd /Users/shawnmeier/Documents/source/config-files/bin

PYTHONPATH="/Users/shawnmeier/.pyenv/versions/3.6.5/bin"

/Users/shawnmeier/.pyenv/versions/3.6.5/bin/python3.6 /Users/shawnmeier/Documents/source/config-files/bin/sayimage.py
