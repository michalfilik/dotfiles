install-after: install
	rm -rf ~/.config/alacritty/catppuccin
	git clone https://github.com/catppuccin/alacritty.git ~/.config/alacritty/catppuccin
install:
	stow --verbose --target=$$HOME --restow */

all: install-after install

delete:
	stow --verbose --target=$$HOME --delete */
