# VIM basic config

Deployment of my vim configuration. Mainly inspired by the [amix's one](https://github.com/amix/vimrc).

## Pre-requisites

This configuration should work with vim >= 7.2

## Installation

	cd ~	# that's important to preced from your home
	git clone https://github.com/frenus/.vim.git
	.vim/setup_vimrc.sh

## Included plugin's bundles
 * [vundle](https://github.com/marik/vundle) : Bundlemanager
 * [nerdtree](https://github.com/scrooloose/nerdtree) : A nice file explorer
 * [ctrlp](https://github.com/kien/ctrlp.vim) : A smart file opener
 * [powerline](https://github.com/Lokaltog/vim-powerline) : THE statusbar
 * [Markdown-syntax](https://github.com/vim-scripts/Markdown-syntax.git): Write your README.md in vim :)

specific to web development
 * [zencoding](https://github.com/mattn/zencoding-vim) : HTML & CSS super fast
 * [phpcomplete](https://github.com/shawncplus/phpcomplete.vim) : patch phpcomplete.vom
 * [phpcodesniffer](https://github.com/vim-scripts/phpcodesniffer.vim.git): check code against standard 

## Included color scheme's bundle
 * [peaksea](https://github.com/vim-scripts/peaksea.git) : default in gui mode
 * [Mustang2](https://github.com/vim-scripts/Mustang2.git) : default in term-256 mode
 * [desert](https://github.com/vim-scripts/desert.vim.git)
 * [peaksea](https://github.com/vim-scripts/peaksea.git)
 * [Solarized](https://github.com/vim-scripts/Solarized.git)
 * [tir_black](https://github.com/vim-scripts/tir_black.git)
 * [candycode](https://github.com/vim-scripts/candycode.vim.git)
 * [mayansmoke](https://github.com/vim-scripts/mayansmoke.git)
 * [pyte](https://github.com/vim-scripts/pyte.git)

## Updating to the last version
To update, just run that script

	.vim/update_vimrc.sh

It'll update the project, sub-projects and Bundles

