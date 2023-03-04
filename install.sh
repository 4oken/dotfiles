HERE=$(cd $(dirname $0); pwd)

# rosetta
sudo softwareupdate --install-rosetta --agree-to-license

# dotfiles
for dotfile in $(ls -a ${HERE}/dotfiles | grep -v ".??*"); do
	ln -snfv "${HERE}/dotfiles/$dotfile" "$HOME/$dotfile"
done