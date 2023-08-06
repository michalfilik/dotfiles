install-deps:
		git clone https://github.com/catppuccin/alacritty.git ~/.config/alacritty/catppuccin
all:
        stow --verbose --target=$$HOME --restow */
		install-deps

delete:
        stow --verbose --target=$$HOME --delete */
