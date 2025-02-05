cp -R slides/img build/img 
cp -R slides/themes build/themes
#docker run --rm -v ${PWD}:/mnt/  marpteam/marp-cli -I /mnt/slides/   -o /mnt/build/ --html
marp  -I .\slides\  -o .\build\ --html