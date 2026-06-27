# ff

A tiny fuzzy file finder for the shell. Type `ff`, fuzzy search any file, see a live preview, and print it.

Built on top of [fzf](https://github.com/junegunn/fzf), [fd](https://github.com/sharkdp/fd), and [bat](https://github.com/sharkdp/bat).

## Install

One command:

```sh
curl -fsSL https://raw.githubusercontent.com/0x9r4ngu/ff/main/install.sh | sh
```

Then reload your shell:

```sh
source ~/.zshrc
```

Make sure the dependencies are installed:

```sh
# Debian / Kali / Ubuntu
sudo apt install fzf fd-find bat

# macOS
brew install fzf fd bat
```

## Usage

```sh
ff            # browse every file from the current directory
ff pdf        # start with "pdf" already in the search box
```

Press Enter to pick a file. The file is printed with syntax highlighting if bat is installed.

## Notes

On Debian based systems the binaries are named `fdfind` and `batcat`. The function already falls back to `batcat`. For `fd`, add a quick alias if needed:

```sh
echo 'alias fd=fdfind' >> ~/.zshrc
```
