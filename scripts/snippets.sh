#!/bin/env bash

snippet() {
  case $1 in 
    rc)
      filename='/Users/mihawk/workshop/dotfiles/snippets/react-component.sh';;
    *)
      echo "invalid snippet name"
      return
      ;;
  esac
  
  bash $filename $2
}

