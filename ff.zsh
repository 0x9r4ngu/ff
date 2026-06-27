# ff - a tiny fuzzy file finder for the shell
# Usage: ff [query]
# Finds a file with fd, picks it with fzf (live preview), then prints it.

ff() {
  local file
  local viewer

  if command -v batcat >/dev/null 2>&1; then
    viewer="batcat --color=always --style=numbers --paging=never"
  elif command -v bat >/dev/null 2>&1; then
    viewer="bat --color=always --style=numbers --paging=never"
  else
    viewer="cat"
  fi

  file=$(fd --type f --hidden --exclude .git "${1:-}" 2>/dev/null \
    | fzf --query "${1:-}" \
          --height=95% --layout=reverse --border \
          --preview "$viewer {} 2>/dev/null" \
          --preview-window 'right,65%,wrap')

  [[ -n "$file" ]] && eval "$viewer \"\$file\""
}
