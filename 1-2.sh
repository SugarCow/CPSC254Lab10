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
        echo "Introdcuing the Project...."
        ;;
    2) 
        echo "Checking File integrity..."
        ;;
    3) 
        echo "checking Dependencies..."
        ;;
    4)
        echo "Rolling the credits..."
        ;;
esac
