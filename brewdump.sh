#!/bin/bash
function syncToGit(){
	dateVar=`date +'%d-%m-%y:%H:%M'`
  	git commit -am "changes from $dateVar"
	git push origin main
}
pushd /Users/joanraychouni/gitprojects/brew-installments
brew bundle dump --file=./Brewfile  --force

git add .
git diff-index --quiet HEAD --
retval=$?
if [ $retval -eq 1 ]; then
	echo "changes detected"
	syncToGit
else
	echo "nothing changed"
fi
pushd
