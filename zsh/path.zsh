# add bin directory to the path
export PATH="$DOTFILES_ROOT/bin:$PATH"

# add each topic folder to fpath so that they can add functions and completion scripts
for topic_folder ($DOTFILES_ROOT/*) if [ -d $topic_folder ]; then  fpath=($topic_folder $fpath); fi;

# add vscode so we can call `code /my_project` on the command line
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"