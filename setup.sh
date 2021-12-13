# jc --unit dotfiles.service -f
# sc restart dotfiles.service
# if using apt-get add "-o DPkg::Lock::Timeout=600"

echo "Installing ohmyzhs"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
echo "Reading ohmyzhs config..."
cd ~
sed -i '' 's/plugins=(git/plugins=(git git-prompt/g' ./.zshr
source ./.zshrc

echo "Setting basic alias"
alias ll="ls -al"
alias c=clear
