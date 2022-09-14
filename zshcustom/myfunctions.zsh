source '/Users/mihawk/workshop/dotfiles/scripts/snippets.sh'


space2uscore() {
  autoload -U zmv
  zmv -v '*' '${f// /_}'
  unfunction zmv
}
