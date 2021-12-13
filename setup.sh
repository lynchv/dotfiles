# jc --unit dotfiles.service -f
# sc restart dotfiles.service
# if using apt-get add "-o DPkg::Lock::Timeout=600"

echo "Installing ohmyzhs..."
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

echo "Setting basic alias..."
alias c=clear
