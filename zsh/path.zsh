# add bin directory to the path
export PATH="$DOTFILES_ROOT/bin:$PATH"

# add each topic folder to fpath so that they can add functions and completion scripts
for topic_folder ($DOTFILES_ROOT/*) if [ -d $topic_folder ]; then  fpath=($topic_folder $fpath); fi;

# Add Qt for capybara-webkit https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"

# add vscode so we can call `code /my_project` on the command line
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"