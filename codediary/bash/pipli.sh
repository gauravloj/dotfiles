
pip_remove() {
  echo "Uninstalling: $1"
  pip3 uninstall -y $1 
  echo "$1 uninstalled"
}


pip_remove_with_dep(){
  depcommand="pip3 show $1 | sed -n -e \"/^Requires/p\" | sed \"s/Requires: //\""
  deps=`eval $depcommand`
  echo "dependencies are: $deps"
  OLDIFS=$IFS
  IFS='[, ]'
  for dep in $deps; do
    pip_remove $dep
  done
  pip_remove $1
  IFS=$OLDIFS
}

 
for dep in $@; do
  # pip_remove_with_dep $dep
  echo "uncomment loop statement to remove $dep"
done

