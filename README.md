# VIM basic config

Deployment of my vim configuration. Mainly inspired by the [amix's one](https://github.com/amix/vimrc).

## Pre-requisites

This configuration should work with vim >= 7.2

## Installation

	cd ~	# that's important to preced from your home
	git clone https://github.com/frenus/.vim.git
	.vim/setup_vimrc.sh
## Add your configuration
If you wan't to add specific configuration, you can add that to ~/.my.vimrc
which is suppose to be created during the installation.


## Included plugin's bundles
 * [vundle](https://github.com/marik/vundle) : Bundlemanager
 * [nerdtree](https://github.com/scrooloose/nerdtree) : A nice file explorer
 * [ctrlp](https://github.com/kien/ctrlp.vim) : A smart file opener
 * [powerline](https://github.com/Lokaltog/vim-powerline) : THE statusbar
 * [Markdown-syntax](https://github.com/vim-scripts/Markdown-syntax.git): Write your README.md in vim :)
 * [UltiSnips](https://github.com/SirVer/ultisnips) : Snippet engine
 * [snipMate](https://github.com/vim-scripts/snipMate.git) : In case your vim isn't compiled with python's support
 * [AutoClose](https://github.com/vim-scripts/AutoClose.git) : Automatically close "'({[

specific to web development
 * [zencoding](https://github.com/mattn/zencoding-vim) : HTML & CSS super fast
 * [phpcomplete](https://github.com/shawncplus/phpcomplete.vim) : patch phpcomplete.vom
 * [phpcs.vim](https://github.com/vim-scripts/phpcodesniffer.vim.git): PPH CodeSniffer check code against standards

## Included color scheme's bundle
 * [peaksea](https://github.com/vim-scripts/peaksea.git) : default in gui mode
 * [Mustang2](https://github.com/vim-scripts/Mustang2.git) : default in term-256 mode
 * [desert](https://github.com/vim-scripts/desert.vim.git)
 * [Solarized](https://github.com/vim-scripts/Solarized.git)
 * [tir_black](https://github.com/vim-scripts/tir_black.git)
 * [candycode](https://github.com/vim-scripts/candycode.vim.git)

## Updating to the last version
To update, just run that script

	.vim/update_vimrc.sh

It'll update the project, sub-projects and Bundles

