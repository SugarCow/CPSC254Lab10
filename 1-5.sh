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
        echo -e "Introducing the Project....
          Survival Slayer is a 2.5D top-down survival slasher game coded in 
          Python using Pygame, with assets created using Aseprite and Tiled.
          The game features challenging gameplay where players must fight off
          skull-like entities that pursue and attack them. The player has a
          collection of weapons and magic spells at their disposal, each with
          their unique attack sounds. Throughout the game, the map will dynamically
          change over time, indicating the passage of time and introducing new
          waves of enemies to keep the player engaged and challenged. Additionally,
          there is background music playing to enhance the overall game experience."
        ;;
    2) 
        read -p "Enter value of either cksum, sha1sum, or md5sum: " choice2
        ./1-3.sh "$choice2"
        ;;
        
    3)
        echo "checking Dependencies..."
        ./1-4.sh
        ;;
    4)
        echo -e "Rolling the credits...\n
          Survival Slayer (CPSC 254 Project)
          Alfredo Llamas, Long Calamia, and Elexzandreia Livermore
          Some sprites and maps are original.\n
          Some sprites, 1 map, and music:
          Pixel-Boy and AAA
          Link to their Website: https://pixel-boy.itch.io/ninja-adventure-asset-pack
          Their Patreon: https://www.patreon.com/pixelarchipel
          Their License used: released under the Creative Commons Zero (CC0) license."
        ;;
esac
