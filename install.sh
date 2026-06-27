#!/bin/sh
# ff installer: downloads ff.zsh and wires it into ~/.zshrc
set -e

DEST="$HOME/.ff"
URL="https://raw.githubusercontent.com/0x9r4ngu/ff/main/ff.zsh"

mkdir -p "$DEST"
echo "Downloading ff.zsh..."
curl -fsSL "$URL" -o "$DEST/ff.zsh"

LINE="source $DEST/ff.zsh"
if ! grep -qF "$LINE" "$HOME/.zshrc" 2>/dev/null; then
  printf '\n%s\n' "$LINE" >> "$HOME/.zshrc"
  echo "Added ff to ~/.zshrc"
else
  echo "ff already sourced in ~/.zshrc"
fi

echo "Done. Run: source ~/.zshrc"
echo "Make sure fzf, fd, and bat are installed."
