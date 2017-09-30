# VIM Configuration

# Install

First, apply the [Pencil Light theme](https://github.com/lysyi3m/osx-terminal-themes) to your Terminal.

Then, create a backup of your current vim setup:

```bash
$ mv ~/.vim ~/.vim.old
$ mv ~/.vimrc ~/.vimrc.old
```

Clone this repository and apply settings:

```bash
$ git clone git://github.com/ornithocoder/vim-config.git
$ mv vim-config ~/.vim
$ ln -s ~/.vim/vimrc ~/.vimrc
```

Finally, open vim and type ``:PlugInstall`` to install all the plugins.
