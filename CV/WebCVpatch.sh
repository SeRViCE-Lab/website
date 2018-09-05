#!/bin/bash
# Instructions
# Put this file in your webcv folder path i.e. 
# $ Website/CV/WebCVpatch.sh. Then run.
rm *.patch; 

#cd ~/Dropbox/ogunmolu/CV
$rm Resume_Work.tex.rej *.patch *.pdf 
wait

#diff -u --from-file Resume_Work.tex --to-file ../../F16/Resume/Resume_Work.tex > WebCV.patch
diff -u Resume_Work.tex ../../F16/Resume/Resume_Work.tex > WebCV.patch
wait

patch -N Resume_Work.tex WebCV.patch --verbose
printf '\n ignoring patches that appear to be reversed or already applied\n'
wait

sleep 5

printf '\n\n Thanks! All done\n\n'

sleep 5

echo "Building pdf from TeX"
texliveonfly Resume_Work.tex
wait

printf '\n\n cleaning up directory\n\n'
$rm *.log *.aux  *.out  *.gz
sleep 5
wait

printf '\n\n show what you got:\n\n'
#cd ~/Dropbox/F16/Resume/ &&
okular Resume_Work.pdf