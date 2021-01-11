# Adam's Dotfiles

Setup assumes you have:
- installed brew
- installed https://github.com/asdf-vm/asdf and
  Ruby https://github.com/asdf-vm/asdf-ruby
  nodejs https://github.com/asdf-vm/asdf-nodejs.git
- installed bundler and rails gems
- installed https://github.com/zplug/zplug via installer script (not brew)

Post Setup
- setup Iterm2 with desired font and theme (See iterm_theme directory)
- activate setting sync in VSCode via Code / Preferences / Turn on Settings Sync
- log into Firefox account and sync bookmarks
- log into dropbox (to get alfred settings)
- download alfred3 (cant use brew casks as they download 4) and apply licence and set preferences folder to Dropbox (MAKE SURE dropbox folder is fully synced)
- add ssh keys to github account.
  - cat ~/.ssh/id_rsa.pub
  - paste it into your [github settings panel](https://github.com/settings/ssh)
  - run `ssh -T git@github.com` to test setup is correct.

Not required but I like using:
Cascadia font for use in terminal and vscode https://github.com/microsoft/cascadia-code


How to setup these dotfiles:

1) Clone the repo into your Projects/archive/dotfiles

2) `cd dotfiles`

3) install dependences listed above (e.g. brew etc)

4) run `brew bundle --file Brewfile`

5) `script/setup` to symlink all the dotfiles in the repo into your $HOME dir

## Folder structure

**git/**
all things git such as gitconfig, customized commit messages and a standard gitignore file for all projects.

**ruby/**
aliases for Ruby and Ruby on Rails projects

**script/**
scripts to help setup your $HOME folder with this project's dotfiles

**zsh/**
configuration for zshrc. Plugins for zsh are managed by zplug. When you add a plugin to the .zshrc file you have to run `zplug install` on the command line.

**media/**
anything related to working with media such as MP3s, Youtube etc

**keyboard**
karabiner keyboard settings. Uses `goku`. To generate the karabine.json file in ~/.config/karabiner/ cd into the dotfile's keyboard directory and run:
 `GOKU_EDN_CONFIG_FILE="karabiner.edm" goku`

**item_themes**
Contains themes for iterm. Open a profile settings in Iterm and import


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
