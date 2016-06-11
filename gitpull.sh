#/bin/bash 

set -e 
if [ -f ~/lastcommit ]; then
   lastcommit=$(cat ~/lastcommit)
   
fi
currentcommit=$(git log -1 | grep commit)
if [ "$currentcommit" != "$lastcommit" ]; then
  git pull
  echo $currentcommit > ~/lastcommit
  
fi
