#!/bin/bash

[[ ! -e "./helpfiles" ]] && echo "Run this file from the howto git top level directory." && exit 1

[[ ! -e "$HOME/bin" ]] && mkdir "$HOME/bin"
[[ ! -e "$HOME/.config/howto" ]] && mkdir "$HOME/.config/howto"

mv ./helpfiles $HOME/.howto/helpfiles
cp config-default.json $HOME/.howto/config.json
