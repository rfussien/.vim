# VIM basic config

My vim configuration.
Mainly inspired by the [amix's one](https://github.com/amix/vimrc).

## Pre-requisites

This configuration should work with vim >= 7.2

## Installation
```bash
    curl -sS https://raw.githubusercontent.com/rfussien/.vim/master/installer | sh
```

## Add your configuration
If you wan't to add specific configuration, you can add that to ~/.my.vimrc
which is suppose to be created during the installation.


## Included plugin's bundles
 * [vundle](https://github.com/gmarik/Vundle.vim) : Plugin manager (like pathogen, but painless)
 * [nerdtree](https://github.com/scrooloose/nerdtree) : A nice file explorer
 * [ctrlp](https://github.com/kien/ctrlp.vim) : A smart file opener
 * [powerline](https://github.com/Lokaltog/vim-powerline) : THE statusbar
 * [Markdown-syntax](https://github.com/vim-scripts/Markdown-syntax.git): Write your README.md in vim :)
 * [UltiSnips](https://github.com/SirVer/ultisnips) : Snippet engine
 * [snipMate](https://github.com/vim-scripts/snipMate.git) : In case your vim isn't compiled with python's support
 * [AutoClose](https://github.com/vim-scripts/AutoClose.git) : Automatically close "'({[
 * [multiple-cursors](https://github.com/terryma/vim-multiple-cursors) : Sublime text like multiple cursor

specific for web development

 * [emmet](https://github.com/mattn/emmet-vim) : HTML & CSS super fast
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
```bash
	.vim/selfupdate
```

It'll update the project, sub-projects and Bundles

