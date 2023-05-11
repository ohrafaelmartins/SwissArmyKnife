rename -vf 's/_/-/' *
rename -vf 'y/A-Z/a-z/' *
rename -vf 's/\(/_/' *
rename -vf 's/\)/_/' *
rename -vf 's/\ /_/' *
rename -vf 's/ê/e/' *

find . -type f -maxdepth 1 | xargs rename -vf 's/-/_/'
find . -type f -maxdepth 1 | xargs rename -vf 's/:/_/'
find . -type f -maxdepth 1 | xargs rename -vf 's/ /_/'
find . -type f -maxdepth 1 | xargs rename -vf 'y/A-Z/a-z/'
find . -type f -maxdepth 1 | xargs rename -vf 's/C/c/'
find . -type f -maxdepth 1 | xargs rename -vf 's/A/a/'
