#!/bin/bash

[[ ! -e "./helpfiles" ]] && echo "Run this file from the howto git top level directory." && exit 1

[[ ! -e "$HOME/bin" ]] && mkdir "$HOME/bin"
[[ ! -e "$HOME/.config/howto" ]] && mkdir "$HOME/.config/howto"

cp -R ./helpfiles $HOME/.config/howto
cp config-default.json $HOME/.config/howto/config.json
cp howto $HOME/bin
chmod +x $HOME/bin/howto
IS_IN_PATH=$( echo "$PATH" | grep "$HOME/bin" )
if [ "x$IS_IN_PATH" == "x" ]
then
    echo 'export PATH=$HOME/bin:$PATH' >> $HOME/.bashrc
fi
export PATH=$HOME/bin:$PATH
