#!/bin/bash

dependencies=("pygame" "sys" "csv" "os" "math")

function check_dependency() {
 
  if ! command -v $1 &> /dev/null
  then
    echo "Dependency $1 is not installed."
    echo "Please install it using the command: $2"
    echo ""

  else
    echo "Dependency $1 is installed."
  fi

}
echo ""
echo "---------------------------------------------------------------------"
echo "To run this project, you need the following dependencies: "
echo "---------------------------------------------------------------------"
for item in "${dependencies[@]}"
do
  echo "$item"
done

echo ""
echo "---------------------------------------------------------------------"
echo "checking for dependencies..."
echo "---------------------------------------------------------------------"
for item in "${dependencies[@]}"
do
  check_dependency "$item" "sudo apt-get install $item"\;
done

