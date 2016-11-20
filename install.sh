sudo apt install git
sudo apt install i3
sudo apt install compton
sudo apt install unclutter
sudo apt install gimp
sudo apt install steam
sudo apt install ffmpeg
sudo apt install vlc
sudo apt-get install software-properties-common
sudo apt-get install silversearcher-ag
sudo apt-get install autojump
sudo apt-get install tmux


sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo pip2 install --upgrade neovim

sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm i -g base16-builder

sudo apt-key adv --fetch-keys http://dl.yarnpkg.com/debian/pubkey.gpg
echo "deb http://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn


gsettings set org.gnome.desktop.background show-desktop-icons false

~/.config/nvim/plugins/YouCompleteMe/install.py --tern-completer

mkdir -p ~/.config/gnome-terminal-themes

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.dif diff
git config --global credential.helper cache
git config --global core.editor nvim

mkdir ~/.bash
git clone git://github.com/jimeh/git-aware-prompt.git ~/.bash/git-aware-prompt

printf 'export GITAWAREPROMPT=~/.bash/git-aware-prompt\nsource "${GITAWAREPROMPT}/main.sh"\n\n'|cat - ~/.bashrc > /tmp/out && mv /tmp/out ~/.bashrc

echo 'export PS1="\${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "' >> ~/.bashrc


