#!/bin/bash
#1.2 Write a shell script file that shows something like this in command line:
# [some intro info]
# [key entering guidance] 
# 0 Exit
# 1 Project Introduction
# 2 File Integrity Check Helper
# 3 Dependency Check Helper 
# 4 Credits

echo "Project 1.2"
echo ""


echo "[0] Exit"
echo "[1] Project Introduction"
echo "[2] File Integrity Check Helper"
echo "[3] Dependency Check Helper"
echo "[4] Credits"

read -p "Enter your number selection: " choice

case $choice in
    0)
        echo "Exiting.."
        ;;
    1)
        echo "Introducing the Project...."
        ;;
    2) 
        read -p "Enter your number selection: " choice2
        CKSUM="2030573888 6684332"
        SHA1SUM="a77093d7910936419a7630f7ce20dd8100ae71f4"
        MD5SUM="11b323eae5527cbbeb2bd327b689b45d"

        if [ "$CKSUM" = choice2 ]; then
            echo "Success, integrity verified: cksum match."
        elif [ "$SHA1SUM" = choice2 ]; then
            echo "Success, integrity verified: sha1sum match."
        elif [ "$MD5SUM" = choice2 ]; then
            echo "Success, integrity verified: md5sum match."
        else 
            echo "Error, corrupt or wrong zip file. Please check correct downloaded zip."
        
        ;;

    3) 
        echo "checking Dependencies..."
        if command -V python3 >/dev/null 2>&1 ; then
            echo "python3 found"
            echo "version: $(python3 -V)"
        else
            echo "python3 not found"
        
        if command -V pip >/dev/null 2>&1 ; then
            echo "pip found"
            echo "version: $(pip -V)"
        else
            echo "pip not found. Use: apt install python3-pip"
        if command pip show pygame &>/dev/null; then
            echo "pygame found"
            echo "version: $(pip show pygame)"
        else
            echo "pygame not found. Use: python3 -m pip install -U pygame --user"
        ;;
    4)
        echo "Rolling the credits..."
        
esac
