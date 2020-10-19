#!/bin/bash

[[ ! -e "./helpfiles" ]] && echo "Run this file from the howto git top level directory." && exit 1

[[ ! -e "$HOME/bin" ]] && mkdir "$HOME/bin"
[[ ! -e "$HOME/.config/howto" ]] && mkdir "$HOME/.config/howto"

cp -R ./helpfiles $HOME/.config/howto/helpfiles
cp config-default.json $HOME/.config/howto/config.json
cp howto $HOME/bin
chmod +x $HOME/bin/howto
echo 'export PATH=$HOME/bin:$PATH' >> $HOME/.bashrc
export PATH=$HOME/bin:$PATH
