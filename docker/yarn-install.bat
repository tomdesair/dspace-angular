@ECHO OFF
docker run --rm -it -p 3000:3000 -v "%cd%":/dspace/code --name dspace-angular dspace/dspace-angular /dspace/install.sh
