sudo apt -y install git
sudo apt -y install i3
sudo apt -y install compton
sudo apt -y install unclutter
sudo apt -y install gimp
sudo apt -y install steam
sudo apt -y install ffmpeg
sudo apt -y install vlc
sudo apt -y install software-properties-common
sudo apt -y install silversearcher-ag
sudo apt -y install autojump
sudo apt -y install tmux
sudo apt -y install feh
sudo apt -y install xclip
sudo apt -y install xbacklight
sudo apt -y install alsa-utils pulseaudio


sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get -y install neovim

sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo pip2 install --upgrade neovim

sudo apt-get -y install build-essential cmake
sudo apt-get -y install python-dev python3-dev

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

mkdir ~/.bash
git clone git://github.com/jimeh/git-aware-prompt.git ~/.bash/git-aware-prompt

printf 'export GITAWAREPROMPT=~/.bash/git-aware-prompt\nsource "${GITAWAREPROMPT}/main.sh"\n\n'|cat - ~/.bashrc > /tmp/out && mv /tmp/out ~/.bashrc

echo 'export PS1="\${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "' >> ~/.bashrc

echo 'source ~/.config/base16-shell/theme.sh' >> ~/.bashrc

mkdir ~/.config/gnome-terminal-theme/
mkdir ~/.config/base16-shell/
mkdir ~/.config/nvim/colors/

base16-builder -s atelier-dune -t gnome-terminal -b dark > ~/.config/gnome-terminal-theme/theme.sh
base16-builder -s atelier-dune -t vim -b dark > ~/.config/nvim/colors/base16-atelier-dune.vim
base16-builder -s atelier-dune -t shell -b dark > ~/.config/base16-shell/theme.sh

