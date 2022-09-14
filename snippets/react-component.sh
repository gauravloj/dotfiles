#!/bin/env bash

# Generate react component using function

if [ $# -ne 1 ]; then
  echo "Invalid parameter"
  echo "Syntax: "
  echo "$0 <Component name>"
fi

snip="
export default function $1() {
  return (
    <>
    </>
  );
}
"

echo -e "$snip"
