# VIM Configuration

# Install

First, install and apply the [Nord](https://www.nordtheme.com/ports) profile to your Terminal.

Then, create a backup of your current vim setup:

```bash
$ mv ~/.vim ~/.vim.old
$ mv ~/.vimrc ~/.vimrc.old
```

Clone this repository and apply settings:

```bash
$ git clone git://github.com/otaviocc/vim-config.git
$ mv vim-config ~/.vim
$ ln -s ~/.vim/vimrc ~/.vimrc
```

Finally, open vim and type ``:PlugInstall`` to install all the plugins.
