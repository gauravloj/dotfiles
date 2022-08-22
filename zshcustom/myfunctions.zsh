space2uscore() {
  autoload -U zmv
  zmv -v '*' '${f// /_}'
  unfunction zmv
}
