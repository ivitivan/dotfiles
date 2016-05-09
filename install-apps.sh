#nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

sudo apt-get install git

git config --global user.name "Vitaly Ivanov"
git config --global user.email ivitivan@gmail.com
git config --global core.editor "nvim"

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.dif diff

sudo apt-get install silversearcher-ag

sudo apt-get install autojump

if grep -q /usr/share/autojump/autojump.sh "~/.bashrc"; then
  echo . /usr/share/autojump/autojump.sh > ~/.bashrc
fi

sudo apt-get install xsel

sudo apt-get install cmake

sudo apt-get install ruby
