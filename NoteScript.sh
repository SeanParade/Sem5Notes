#!/usr/bin/env bash
#cd /mnt/c/Users/Mainbitch/Dropbox/Code/Notes/WIN2017/$1

printf "# $1\n#### Week $2\n" >> /mnt/c/Users/Sean/Dropbox/Code/Notes/FALL2017/SPNotes/$1/wk$2.md
echo | date >> /mnt/c/Users/Sean/Dropbox/Code/Notes/FALL2017/SPNotes/$1/wk$2.md
printf "\n___\n\n### "  >> /mnt/c/Users/Sean/Dropbox/Code/Notes/FALL2017/SPNotes/$1/wk$2.md
cd ~
emacs /mnt/c/Users/Sean/Dropbox/Code/Notes/FALL2017/SPNotes/$1/wk$2.md

