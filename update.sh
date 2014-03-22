#!bin/bash
cp -r org/resources ./resources/
git add *
git commit -m "update"
git push origin gh-pages
