# ff

A tiny fuzzy file finder for the shell. Type `ff`, fuzzy search any file, see a live preview, and print it.

Built on top of [fzf](https://github.com/junegunn/fzf), [fd](https://github.com/sharkdp/fd), and [bat](https://github.com/sharkdp/bat).

## Install

1. Install the dependencies.

   Debian / Kali / Ubuntu:
   ```sh
   sudo apt install fzf fd-find bat
   ```

   macOS:
   ```sh
   brew install fzf fd bat
   ```

2. Get the function.
   ```sh
   git clone https://github.com/0x9r4ngu/ff.git ~/.ff
   ```

3. Source it from your shell config.
   ```sh
   echo 'source ~/.ff/ff.zsh' >> ~/.zshrc
   ```

4. Reload your shell.
   ```sh
   source ~/.zshrc
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
