i3config.vim - vim i3 config syntax highlighting
------------------------------------------------

This file contains syntax highlighting that I use for i3 config in Vim.
Compared to the standard syntax highlighting for conf, i3config
adds highlighting of (i3 defined) all keywords, types and options.

I build this based on the current specification provided in:
<http://i3wm.org/docs/userguide.html#configuring> (Sat 12 Mar 2016)

![Screenshot](https://github.com/mboughaba/i3config.vim/blob/master/screenshot.png)

Feature
-------
i3config does what a syntax highlighting would do and additionally
provide some sort of syntax checking. If you end up with *Bold Red*
lines in your i3 config file this would mean that your syntax is wrong
or there is an issue in the plugin.
If that is the case please report the issue and/or make a PR to cover the case.

File type detection
------------------

There is no specific extension for i3 config file.
For auto detection, the recommended method is to rename your file to something like:
.i3.config
i3.config
something.i3config
something.i3.config

> This way you can keep you file clean somewhere in a dotfile repository and have it symlinked to ~/.i3/config

If you don't want to then you can always do:
```vim
:set ft=i3config
```
or
```vim
:set filetype=i3config
```

Installation instructions
-------------------------
Follow one of the sets of directions below and reload vim afterwards.

#### Vundle
Instal using [vundle](https://github.com/gmarik/Vundle.vim) by adding
```vim
Plugin 'mboughaba/i3config'
```
to .vimrc and run `:PluginInstall`.

> The two steps below are just some indications, you may change them to fit your needs.
#### Git submodule + Pathogen
I don't use Pathogen myself. If you have [pathogen](https://github.com/tpope/vim-pathogen) installed,
and you prefer to use git submodules, run
```sh
cd ~/.vim
git submodule add https://github.com/mboughaba/i3config.git bundle/syntax/
```

#### Manual installation
If you don't have either Vundle or Pathogen installed, copy both i3config.vim file
to .vim/after/syntax and .vim/after/ftdetect respectively.
```sh
git clone https://github.com/mboughaba/i3config.git /tmp/i3config
mkdir -p ~/.vim/after/syntax/
mv /tmp/i3config/after/syntax/i3config.vim ~/.vim/after/syntax/i3config.vim
rm -rf /tmp/i3config
```

Contribution
------------

Feel free to make pull request, I will gladly integrate them.
Make sure to add a line to cover your test in the *test.i3config*.

Issues
------

Line continuation is not supported, i3config highlighting will report split lines as errors.

Background information
----------------------

#### Author
Mohamed Boughaba

Development is done at: <https://github.com/mboughaba/i3config.vim>

Last update: Sat 12 Mar 2016
