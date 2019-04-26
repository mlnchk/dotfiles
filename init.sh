# mkdir -p "$(HOME)/code" && cd "$(HOME)/code";
git clone https://github.com/mlnchk/dotfiles.git && cd dotfiles;
# sudo pip install ansible && ansible-playbook playbook.yml;

brew bundle;
# ln -s "${HOME}/code/dotfiles/.bash_profile" "${HOME}/.bash_profile"
# ln -s "${HOME}/code/dotfiles/.gitignore_global" "${HOME}/.gitignore_global"
ln -s "${HOME}/code/dotfiles/.zshrc" "${HOME}/.zshrc"
ln -s "${HOME}/code/dotfiles/.vimrc" "${HOME}/.vimrc"
ln -s "${HOME}/code/dotfiles/.npmrc" "${HOME}/.npmrc"
ln -s "${HOME}/code/dotfiles/.gitconfig" "${HOME}/.gitconfig"
