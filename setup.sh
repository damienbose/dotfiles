# Neovim
rm -f ~/.config/nvim
ln -s ~/projects/dotfiles/nvim ~/.config/nvim

# VSCode
rm -f ~/Library/Application\ Support/Code/User/settings.json
rm -f ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/projects/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/projects/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

# ZSH
rm -f ~/.zshrc
ln -s ~/projects/dotfiles/.zshrc ~/.zshrc
