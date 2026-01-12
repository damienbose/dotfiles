# Remove existing symlinks if they exist
rm -f ~/.config/nvim
rm -f ~/Library/Application\ Support/Code/User/settings.json
rm -f ~/Library/Application\ Support/Code/User/keybindings.json
rm -f ~/Library/Application\ Support/Cursor/User/settings.json
rm -f ~/Library/Application\ Support/Cursor/User/keybindings.json
rm -f ~/.zshrc

# Create symlinks
ln -s ~/projects/dotfiles/nvim ~/.config/nvim
ln -s ~/projects/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/projects/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/projects/dotfiles/cursor/settings.json ~/Library/Application\ Support/Cursor/User/settings.json
ln -s ~/projects/dotfiles/cursor/keybindings.json ~/Library/Application\ Support/Cursor/User/keybindings.json
ln -s ~/projects/dotfiles/.zshrc ~/.zshrc
