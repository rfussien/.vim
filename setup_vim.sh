#!/bin/bash
# setup a nice vim configuration

if [ -f ~/.vimrc ] ; then
	read -p "Sure you wan't to override your .vimrc ? [Y/n] " yn
	case $yn in
		[Yy]* ) echo "Let's improve an already improved vi";;
		[Nn]* ) exit;;
		* ) echo "That wasn't an expected answer...";exit;;
	esac
fi

git submodule init
git submodule update
cp ./.vimrc ~
vim +BundleInstall +qall

echo "Done!"
