# VIM Configuration

![](https://user-images.githubusercontent.com/19753339/28611556-6d82891c-71ec-11e7-91d0-5372b98b7e0f.png)

# Install

First, apply the [nord color theme](https://github.com/arcticicestudio/nord-terminal-app) to your Terminal.

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
