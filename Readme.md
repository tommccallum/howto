# howto

A simple script to display common uses of a command when you cannot quite remember 
that special incantation.

[howto example](img/howto1.png "HowTo Example")

## Installation

This will install a script howto into a directory $HOME/bin directory and the helpfiles and config file will
be put into $HOME/.config/howto.  This is so that you don't need root permissions.

```
pip3 install --user colorama
git clone https://www.tom-mccallum.com/howto
install.sh
```

It will also add the following to your .bashrc

```
export PATH=$HOME/bin:$PATH
```

## To add new helpfiles

Help files are JSON files.  Copy one of the existing ones and add your own commands to it.  All helpfiles can be found in the directory ```$HOME/.config/howto/helpfiles```.