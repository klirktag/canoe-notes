#!/bin/bash
mkdir -p $HOME/Documents/enotes
mkdir -p $HOME/Documents/enotes/other

# Make sure to be in the right directory when saving new files
cd $HOME/Documents/enotes/other

if pidof gedit
then
	# based on  https://askubuntu.com/questions/21262/shell-command-to-bring-a-program-window-in-front-of-another
	wmctrl -a gedit
else
	gedit $HOME/Documents/enotes/clipboard $HOME/Documents/enotes/other/* > /dev/null 2> /dev/null
fi
