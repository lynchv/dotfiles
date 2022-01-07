# journalctl --unit dotfiles.service -f
# journalctl --unit dotfiles.service --lines 50
# systemctl restart dotfiles.service
# if using apt-get add "-o DPkg::Lock::Timeout=600"

# Installing Python
sudo apt-get -o DPkg::Lock::Timeout=600 update 
sudo apt-get -o DPkg::Lock::Timeout=600 -y install python 

# Installing oh-my-zsh
echo "Installing ohmyzhs"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
echo "Copying custom theme"
cp ~/dotfiles/inspect.zsh-theme ~/.oh-my-zsh/themes
echo "Modifying .zshrc plugins"
sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"inspect\"/g' ~/.zshrc
sed -i 's/plugins=(git/plugins=(git git-prompt/g' ~/.zshrc

# Copying .zprofile
echo "Copying .zprofile"
cp ~/dotfiles/.zprofile ~/.zprofile
