#!/bin/bash
# TextReplace Script to replace Strings in files.
# By Abdelrahman Helaly <AHelaly@gmail.com github/AHelaly>

replaceText(){
    baseDir=$1
    oldWord=$2
    newWord=$3
    grep --null -irslZ "$oldWord" --exclude-dir=.git --exclude=run.sh $baseDir | xargs -0 sed -i -- "s/""$oldWord""/""$newWord""/gI"
}


# First Parameter: Target Directory
# Second Parameter: Text to replace
# Thirn Paremeter: New text

replaceText "$1" "$2" "$3"
