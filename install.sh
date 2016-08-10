git clone https://github.com/ivitivan/dotfiles /tmp/dotfiles
cd /tmp/dotfiles

cp ./configs/tmux.conf ~/.tmux.conf
cp ./tmuxgo ~/.tmuxgo
echo alias tm=\'bash ~/.tmuxgo\' >> ~/.bash_aliases

