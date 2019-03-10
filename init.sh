# mkdir -p "$(HOME)/code" && cd "$(HOME)/code";
git clone https://github.com/mlnchk/dotfiles.git && cd dotfiles;
# sudo pip install ansible && ansible-playbook playbook.yml;

brew bundle;
# ln -s "${HOME}/dotfiles/.bash_profile" "${HOME}/.bash_profile"
# ln -s "${HOME}/dotfiles/.gitignore_global" "${HOME}/.gitignore_global"
ln -s "${HOME}/dotfiles/.zshrc" "${HOME}/.zshrc"
ln -s "${HOME}/dotfiles/.vimrc" "${HOME}/.vimrc"
ln -s "${HOME}/dotfiles/.npmrc" "${HOME}/.npmrc"
ln -s "${HOME}/dotfiles/.gitconfig" "${HOME}/.gitconfig"
