DIR="$(dirname "${BASH_SOURCE[0]}")"

echo "copy $DIR/.config into ${HOME}"
cp -R "$DIR/.config" "${HOME}/"

shopt -s dotglob
HOME_DOTFILES=("/home/vit/dotfiles/home-dotfiles/"*)
for f in "${HOME_DOTFILES[@]}"
do
  echo "copy ${f} into ${HOME}"
  cp -R "${f}" "${HOME}/"
done
