export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home/
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

PATH=/Applications/MacVim.app/Contents/bin:$PATH
PATH=$PATH:/Users/s/Library/Android/sdk/platform-tools:/Users/s/software/dex-method-counts/build/install/dex-method-counts/bin
PATH=$PATH:/Users/s/software/lein
PATH=$PATH:/Users/s/.smt_solvers/python-bindings-2.7
PATH=$PATH:/Users/s/software/elm-protobuf-2.1.0-osx-x86_64/bin/elm-protobuf-2.1.0-osx-x86_64
PATH=$PATH:$HOME/.cargo/env
PATH=$PATH:"/Users/s/.smt_solvers/z3/z3-4.4.1-x64-osx-10.11/bin"
export PATH="/Users/s/software/infer/infer/bin/:${PATH}" #use compiled version of infer
export PATH="/Users/s/.pyenv:$PATH"
eval "$(pyenv init -)"
PATH=$PATH:/Users/s/.opam/system/bin
#PATH=$PATH:/Users/s/Library/Python/2.7/bin
#PATH=/Users/s/software/links:$PATH #point toward brew version of python because osx default sucks

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
alias copy="tr -d '\n' | pbcopy"
alias droidshot="adb shell screencap -p /sdcard/screen.png;adb pull /sdcard/screen.png;adb shell rm /sdcard/screen.png"
export PYTHONPATH=${PYTHONPATH}:/Users/s/Documents/source/verivita/cbverifier:/Users/s/Documents/source/verivita:/Users/s/software/pysmt

#pysmt
export PYTHONPATH="/Users/s/.smt_solvers/python-bindings-2.7:${PYTHONPATH}"
export LD_LIBRARY_PATH="/Users/s/.smt_solvers/python-bindings-2.7:${LD_LIBRARY_PATH}"
#custom commands from shawn
export ANDROID_HOME=/Users/s/Library/Android/sdk
alias fnp="find \`pwd\` -name"
alias gw="./gradlew"
alias jadx="/Users/s/software/jadx/build/jadx/bin/jadx-gui"
alias startapk="python ~/Documents/source/TraceRunner/utils/start.py"
alias infoapk="python ~/Documents/source/TraceRunner/utils/pkgAndMainActivity.py ."
alias baksmali="java -jar /Users/s/software/smali/baksmali/build/libs/baksmali-2.2.0-b65e942e-fat.jar"
#alias apktool="java -jar /Users/s/software/apktool_2.2.2.jar"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

alias prop="python ~/Documents/source/TraceRunner/utils/ProtoConverter/protoPrinter.py --trace"
alias nix-shell="/Users/s/result/bin/bash -c /nix/var/nix/profiles/default/bin/nix-shell"
#continuous latex build: `latexmk -pdf -pvc <latex source file>` (requires `latexmk`, which is `brew`-able)
#(without the `-pvc`, that’ll just rerun `pdflatex` until internal references/citations/layout reaches a fixed point)
#config file: ~/.latexmkrc
# "M-x server-start" - start emacs server for sync pdf.  meta shift click - go to location
alias looptex="latexmk -pdf -pvc"

# OPAM configuration
#. /Users/s/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/Applications/Skim.app/Contents/MacOS"
set -o vi #set input mode of bash to vim https://sanctum.geek.nz/arabesque/vi-mode-in-bash/


#disable bluetooth play launching itunes
# https://superuser.com/questions/554489/how-can-i-remap-a-play-button-keypress-from-a-bluetooth-headset-on-os-x
killall -9 rcd 2>/dev/null
alias sl="ls -al"

qe(){
    emacsclient --no-wait +1 $1
}
