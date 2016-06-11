#/bin/bash 

set -e 
git fetch
if [ -f ~/lastcommit ]; then
   lastcommit=$(cat ~/lastcommit)
   
fi
currentcommit=$(git log -1 origin/master | grep commit)
if [ "$currentcommit" != "$lastcommit" ]; then
  git pull
  echo $currentcommit > ~/lastcommit
  
fi
