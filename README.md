# swayconfig.vim

This repo contains the syntax highlighting rules that I used for sway config in
Vim. Sway syntax is similar to [i3 syntax](http://i3wm.org/docs/userguide.html#configuring) 
with a few differences in [keywords](https://github.com/swaywm/sway/blob/master/sway/sway.5.scd).

The syntax file has been added to
[vim](https://github.com/vim/vim/commit/7abd1c6d8e777bde1700633bafc1a40be9e9c1aa)
and [neovim](https://github.com/neovim/neovim/pull/19545) and their maintainence 
will continue on the `vim` branch. The `master` branch will host a standalone
version of the plugin.

### File type detection

There is no specific extension for sway config file. The plugin checks for the
word sway in the buffer or the filepath to set the filetype. Additonally, you an
add `# vim: filetype=swayconfig` anywhere in your config file.

## Installation instructions

Both vim and neovim should have the swayconfig syntax by default. If not, follow
one of the steps below and reload vim afterwards.

### Vundle

```vim
Plugin 'jamespeapen/swayconfig.vim'
```

### vim-plug

```vim
Plug 'jamespeapen/swayconfig.vim'
```

### Git submodule + Pathogen

```sh
cd ~/.vim
git submodule add https://github.com/mboughaba/swayconfig.vim.git bundle/syntax/
```

### Manual installation

```sh
git clone https://github.com/jamespeapen/swayconfig.git /tmp/swayconfig.vim
mkdir -p ~/.vim/after/syntax/
mv /tmp/swayconfig.vim/after/syntax/swayconfig.vim ~/.vim/after/syntax/swayconfig.vim
rm -rf /tmp/swayconfig.vim
```

## Contribution

Feel free to open issues or make a pull requests. I will adress them as time
permits. Make sure to add tests to cover any new syntax in `test.swayconfig`.

### Authors

James Eapen

Mohamed Boughaba

## License

MIT
