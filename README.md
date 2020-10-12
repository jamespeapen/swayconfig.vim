# sway-config.vim - vim Sway config syntax highlighting

This file contains the syntax highlighting that I use for sway config in Vim.
Compared to the vim standard *conf* syntax highlighting, sway-config
adds highlighting of keywords,
types and options for sway config files. This is a work in progress and more keywords
and patterns need to be added.

Sway syntax is similar to ![i3 syntax](http://i3wm.org/docs/userguide.html#configuring) with 
a few differences in keywords. 

![](i3config.vim.gif)

*using vim color scheme [dracula](https://github.com/dracula/vim)*

*using Powerline font [ProFont for Powerline](https://github.com/powerline/fonts/blob/master/ProFont/README.rst)*

## Features

sway-config does what a syntax highlighting would do and additionally
provides some sort of syntax checking. If you end up with *Bold Red*
lines in your sway config file this would mean that your syntax is wrong
or there is an issue in the plugin.
If that is the case please report the issue and/or
make a pull request to cover the case.

### File type detection

There is no specific extension for sway config file. The plugin checks for the word
sway in the buffer to set the filetype.

> This way you can keep your file clean somewhere in a
dotfile repository and have it symlinked to ~/.config/sway/config

If you don't want to, then you can always do:

```vim
:set ft=swayconfig
```

or

```vim
:set filetype=swayconfig
```

or you can add this line your .vimrc file

```vim
aug swayconfig_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/sway/config set filetype=swayconfig
aug end
```
Additonally, you an add `# vim: filetype=i3config` anywhere in your config file, as suggested by the original plugin (see below).

## Installation instructions

Follow one of the steps below and reload vim afterwards.

### Vundle

Install using [Vundle](https://github.com/gmarik/Vundle.vim) by adding

```vim
Plugin 'jamespeapen/sway-config.vim'
```

to `.vimrc` and run `:PluginInstall`.

### vim-plug

Install using [vim-plug](https://github.com/junegunn/vim-plug). Similar than the installation for Vundle, just change `Plugin` to `Plug`:

Add

```vim
Plug 'jamespeapen/sway-config.vim'
```

to `.vimrc` and run `:PlugInstall`.

### Git submodule + Pathogen

If you have [pathogen](https://github.com/tpope/vim-pathogen) installed,
and you prefer to use git submodules, run

```sh
cd ~/.vim
git submodule add https://github.com/mboughaba/sway-config.vim.git bundle/syntax/
```

### Manual installation

If you don't have either Vundle or Pathogen installed, copy both i3config.vim file
to .vim/after/syntax and .vim/after/ftdetect respectively.

```sh
git clone https://github.com/jamespeapen/sway-config.git /tmp/sway-config.vim
mkdir -p ~/.vim/after/syntax/
mv /tmp/sway-config.vim/after/syntax/swayconfig.vim ~/.vim/after/syntax/swayconfig.vim
rm -rf /tmp/sway-config.vim
```

## Inspired by

+ mboughaba/i3config.git
  <https://github.com/mboughaba/i3config.git>

## Contribution

Feel free to make a pull request, I will integrate it when time permits.
Make sure to add a line to cover your test in the *test.swayconfig*.

## Background information

### Author
James Eapen
Mohamed Boughaba

## License

MIT
