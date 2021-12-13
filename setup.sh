echo "Installing ohmyzhs..."

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# if using apt-get add "-o DPkg::Lock::Timeout=600"