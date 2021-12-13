# jc --unit dotfiles.service -f
# sc restart dotfiles.service
# if using apt-get add "-o DPkg::Lock::Timeout=600"

echo "Installing ohmyzhs"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
echo "Copying custom theme"
cp ~/dotfiles/inspect.zsh-theme ~/.oh-my-zsh/themes
echo "Modifying .zshrc plugins"
sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"inspect\"/g' ~/.zshrc
sed -i 's/plugins=(git/plugins=(git git-prompt/g' ~/.zshrc
echo "Initializing ohmyzhs"
source ~/.zshrc

echo "Setting basic alias"
alias ll="ls -al"
alias c=clear
