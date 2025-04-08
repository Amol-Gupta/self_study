cp -R slides/img build/
cp -R slides/themes build/themes
#docker run --rm -v ${PWD}:/mnt/  marpteam/marp-cli -I /mnt/slides/   -o /mnt/build/ --html
marp  -I .\slides\  -o .\build\ --html

docker run  --rm -it -v  ${PWD}/build/:/home/uv-example-user/src/mnt  htmlimgembedder:latest uv run html_img_embedder.py  mnt/Slides_1.html mnt/Slides_1_standAlone.html
docker run  --rm -it -v  ${PWD}/build/:/home/uv-example-user/src/mnt  htmlimgembedder:latest uv run html_img_embedder.py  mnt/Slides_2.html mnt/Slides_2_standAlone.html
docker run  --rm -it -v  ${PWD}/build/:/home/uv-example-user/src/mnt  htmlimgembedder:latest uv run html_img_embedder.py  mnt/Slides_3.html mnt/Slides_3_standAlone.html
docker run  --rm -it -v  ${PWD}/build/:/home/uv-example-user/src/mnt  htmlimgembedder:latest uv run html_img_embedder.py  mnt/Slides_4.html mnt/Slides_4_standAlone.html