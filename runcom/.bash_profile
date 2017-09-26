DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for DOTFILE in "$DOTFILES_DIR"/system/.{function,alias}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done
