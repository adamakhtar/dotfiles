# Adam's Dotfiles

Setup assumes you have:
- installed oh-my-zsh and made zsh the default shell.
- installed powerline fonts and configured your terminal to use them

How to setup these dotfiles:

1) Clone the repo into your $HOME directory

2) `cd .dotfiles`

3) `script/setup` to symlink all the dotfiles in the repo into your $HOME dir

## Folder structure

**git/**
all things git such as gitconfig, customized commit messages and a standard gitignore file for all projects.

**ruby/**
aliases for Ruby and Ruby on Rails projects

**script/**
scripts to help setup your $HOME folder with this project's dotfiles

**zsh/**
configuration for zshrc and oh-my-zsh

**media/**
anything related to working with media such as MP3s, Youtube etc


**functions/**
completion functions for zsh
See: https://github.com/zsh-users/zsh-completions/blob/master/zsh-completions-howto.org

## Installation

1) Clone the repo into your $HOME directory
2) `cd ~/.dotfiles`
3) `script/setup`

The setup script will symlink all the necessary files into your $HOME directory and .zsh files will automatically be loaded. This is heavily inspired by [Holman's excellent dotfiles](https://github.com/holman/dotfiles)

## Adding to the project

If you want another dotfile in your $HOME directory, first add it to this project in the relevant directory. Give the file an extension of .symlink (This is purely to make it easier to visually see which files will be symlinked) and then update script/setup to symlink the file. In the near future this will be improved so that any file with .symlink will automatically be symlinked.

If you want to add more zsh files for things like aliases then simply create a file with a .zsh extension and these will be autoloaded by the file zsh/.zshrc.symlink
