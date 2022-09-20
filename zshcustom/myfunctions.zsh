source '/Users/mihawk/workshop/dotfiles/scripts/snippets.sh'


space2uscore() {
  autoload -U zmv
  zmv -v '*' '${f// /_}'
  unfunction zmv
}

# rename all files in current folder to lower case
renamelower(){
  autoload -U zmv
  zmv -v '(*)' '${(L)1}'
  unfunction zmv
}
