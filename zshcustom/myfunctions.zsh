space2dash() {
  autoload -U zmv
  zmv -v '*' '${f// /-}'
  unfunction zmv
}

# rename all files in current folder to lower case
renamelower(){
  autoload -U zmv
  zmv -v '(*)' '${(L)1}'
  unfunction zmv
}

tree(){
  find "${@:-.}" -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
}

# open nth file in the current directory
openth(){
  ls -1 | sed -n ${1}p | xargs -I@ open "@"
}

# find files with given name in current directory and subdirectory
finame() {
  find . -iname "*$1*"
}

sedn(){
  sed -n ${1}p
}

sshgame(){
  # usage : sshgame <gamename> <level number>
  # game names: bandit, leviathan, krypton, narnia, nehemoth, utumno, 
  #             maze, vortex, manpage
  # level number: integer number of required level. Eg. 0, 1, 2 etc.
  ssh -l ${1}${2} $1
}


free(){
  vm_stat | perl -ne '/page size of (\d+)/ and $size=$1; /Pages\s+([^:]+)[^\d]+(\d+)/ and printf("%-16s % 16.2f Mi\n", "$1:", $2 * $size / 1048576);'
}

# show current wifi pass
# showpasswifi(){
  # On mac
  # security find-generic-password -ga <SSID>
# }

addalert(){
  if [ $# -ne 3 ]; 
  then 
    echo "Usage: addalert <alert title> <alert message> <waittime>"
    return 3
  fi
  cmdd="display alert \"$1\" message \"$2\""
  sleep $3 && osascript -e $cmdd
}
